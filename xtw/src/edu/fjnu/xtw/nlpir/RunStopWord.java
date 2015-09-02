package edu.fjnu.xtw.nlpir;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.HashSet;
import java.util.Set;
import com.sun.jna.Library;
import com.sun.jna.Native;
/*
 * 将所给句子进行分词，分词后过滤掉停用词
 * */
public class RunStopWord {
	// 停用词词表
	//public static final String stopWordTable = "." + File.separator + "srcFile"
	//		+ File.separator + "StopWordTable.txt";
	private static final String stopWordTable = "."+File.separator + "StopWordTable.txt";
	public interface CLibrary extends Library {
		// 定义并初始化接口的静态变量
		CLibrary Instance = (CLibrary) Native.loadLibrary("NLPIR",
				CLibrary.class);

		public int NLPIR_Init(String sDataPath, int encoding,
				String sLicenceCode);//初始化

		public String NLPIR_ParagraphProcess(String sSrc, int bPOSTagged);//对字符串进行分词

		public String NLPIR_GetKeyWords(String sLine, int nMaxKeyLimit,
				boolean bWeightOut);//从字符串中得到关键词

		public String NLPIR_GetFileKeyWords(String sLine, int nMaxKeyLimit,
				boolean bWeightOut);//从TXT当中得到关键词

		public int NLPIR_AddUserWord(String sWord); //添加用户词典

		public int NLPIR_DelUserWord(String sWord);	//删除用户词典

		public String NLPIR_GetLastErrorMsg(); //得到报错日志
		
		public int NLPIR_ImportUserDict(String sFilename);//从txt文件获取用户词典

		public void NLPIR_Exit(); //exit
	}

	
	
	public void fileExcludeStopWord(String TString) throws IOException {
		// 读取原文件和停用词表
		//BufferedReader srcFileBr = new BufferedReader(new InputStreamReader(
		//		new FileInputStream(new File(srcFile))));
		//读取停用词表
		BufferedReader StopWordFileBr = new BufferedReader(
				new InputStreamReader(new FileInputStream(new File(
						stopWordTable))));
		// 将去除停用词的文本信息存入输出文件
		//BufferedWriter destFileBw = new BufferedWriter(new OutputStreamWriter(
		//		new FileOutputStream(new File(destFile))));

		// 用来存放停用词的集合
		Set stopWordSet = new HashSet<String>();
		// 初始化停用词集
		String stopWord = null;
		
		for (; (stopWord = StopWordFileBr.readLine()) != null;) {
			stopWordSet.add(stopWord);
		}
		// 初始化所用词库的路径
		CLibrary instance = (CLibrary)Native.loadLibrary(System.getProperty("user.dir")+"\\NLPIR", CLibrary.class);
		String argu = ".";
		String system_charset = "UTF-8";
		int charset_type = 1;
		int init_flag = CLibrary.Instance.NLPIR_Init(argu, charset_type, "0");
		String nativeBytes = null;
		if (0 == init_flag) {
			nativeBytes = CLibrary.Instance.NLPIR_GetLastErrorMsg();
			System.err.println("初始化失败！fail reason is " + nativeBytes);
			return;
		}
		// String argu = "." ;
		//添加用户词典
//		CLibrary.Instance.NLPIR_AddUserWord("立诚");
//		CLibrary.Instance.NLPIR_AddUserWord("笃行");
//		CLibrary.Instance.NLPIR_AddUserWord("不小心");
		instance.NLPIR_ImportUserDict(System.getProperty("user.dir")+"\\source\\userdic.txt");
		String paragraph = TString;
		
		//for (; (paragraph = srcFileBr.readLine()) != null;) {
		//for (; (paragraph =TString) != null;) {
			// 对读入的文本进行分词
			String spiltResultStr = CLibrary.Instance.NLPIR_ParagraphProcess(paragraph,0);
			// 得到分词后的词汇数组
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
			// 将过滤后的文本信息写入指定文件中
			//destFileBw.write(finalStr.toString());
			//destFileBw.newLine();
			if(i == resultArray.length -1)
				System.out.println(finalStr.toString());
			}
		// 关闭输入流
		StopWordFileBr.close();
		
		/*
		 * catch(FileNotFoundException e){ e.printStackTrace() ;
		 * 
		 * }catch (Exception e){ e.printStackTrace() ;
		 */
	}
	
}
