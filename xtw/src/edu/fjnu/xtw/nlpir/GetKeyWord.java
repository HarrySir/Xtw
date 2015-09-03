package edu.fjnu.xtw.nlpir;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStreamReader;
import java.util.HashSet;
import java.util.Set;

import com.sun.jna.Library;
import com.sun.jna.Native;

import edu.fjnu.xtw.nlpir.RunStopWord.CLibrary;

public class GetKeyWord {
	
	private static final String stopWordTable = "."+File.separator + "StopWordTable.txt";
	
	public interface CLibrary extends Library{

		CLibrary Instance = (CLibrary) Native.loadLibrary("NLPIR",
				CLibrary.class);
	    //初始化
	    public int NLPIR_Init(String sDataPath, int encoding, String sLicenceCode);
	    //对字符串进行分词
	    public String NLPIR_ParagraphProcess(String sSrc, int bPOSTagged);
	    //对TXT文件内容进行分词
	    public double NLPIR_FileProcess(String sSourceFilename,String sResultFilename, int bPOStagged);
	    //从字符串中提取关键词 
	    public String NLPIR_GetKeyWords(String sLine, int nMaxKeyLimit,boolean bWeightOut);
	    //从TXT文件中提取关键词 
	    public String NLPIR_GetFileKeyWords(String sLine, int nMaxKeyLimit,boolean bWeightOut);
	    //添加单条用户词典
	    public int NLPIR_AddUserWord(String sWord);
	    //删除单条用户词典
	    public int NLPIR_DelUsrWord(String sWord);
	    //从TXT文件中导入用户词典
	    public int NLPIR_ImportUserDict(String sFilename);
	    //将用户词典保存至硬盘
	    public int NLPIR_SaveTheUsrDic();
	    //从字符串中获取新词
	    public String NLPIR_GetNewWords(String sLine, int nMaxKeyLimit, boolean bWeightOut);
	    //从TXT文件中获取新词
	    public String NLPIR_GetFileNewWords(String sTextFile,int nMaxKeyLimit, boolean bWeightOut);
	    //获取一个字符串的指纹值
	    public long NLPIR_FingerPrint(String sLine);
	    //设置要使用的POS map
	    public int NLPIR_SetPOSmap(int nPOSmap);
	    //获取报错日志
	    public String NLPIR_GetLastErrorMsg();
	    //退出
	    public void NLPIR_Exit();    
	}
	
	public String GetBegin(String Gstring) throws Exception {
		//读取停用词表
		BufferedReader StopWordFileBr = new BufferedReader(
				new InputStreamReader(new FileInputStream(new File(stopWordTable))));
		Set stopWordSet = new HashSet<String>();
		// 初始化停用词集
		String stopWord = null;
		for (; (stopWord = StopWordFileBr.readLine()) != null;) {
				stopWordSet.add(stopWord);
			}
		CLibrary instance = (CLibrary)Native.loadLibrary(System.getProperty("user.dir")+"\\NLPIR", CLibrary.class);
		String argu = ".";
		String system_charset = "UTF-8";
		int charset_type = 1;
		int init_flag = CLibrary.Instance.NLPIR_Init(argu, charset_type, "0");
		
		String resultString = null;
		if (0 == init_flag) {
			resultString = CLibrary.Instance.NLPIR_GetLastErrorMsg();
			System.err.println("初始化失败！fail reason is " + resultString);
			return null;
		}
		instance.NLPIR_ImportUserDict(System.getProperty("user.dir")+"\\source\\userdic.txt");
		String paragraph = Gstring;
		//对给所语句先进行分词
		String spiltResultStr = CLibrary.Instance.NLPIR_ParagraphProcess(paragraph,0);
		String[] resultArray = spiltResultStr.split(" ");
		// 过滤停用词
		for (int i = 0; i < resultArray.length; i++) {
			if (stopWordSet.contains(resultArray[i])) {
						resultArray[i] = null;
			}
		// 把过滤后的字符串数组存入到一个字符串中
		StringBuffer finalStr = new StringBuffer();
		for (int i1 = 0; i1 < resultArray.length; i1++) {
			if (resultArray[i1] != null) {
				finalStr = finalStr.append(resultArray[i1]).append(" ");
				}
			}
		if(i == resultArray.length -1)
			resultString = instance.NLPIR_GetKeyWords(finalStr.toString(),15,false);
		}
		
        //System.out.println("所提取的关键字为：" + resultString);
        return resultString ;
	}
	
}
