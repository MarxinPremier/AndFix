package com.wangzuo.andfix;

import android.os.Environment;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;

import com.alipay.euler.andfix.patch.PatchManager;

import java.io.File;
import java.io.IOException;

public class MainActivity extends AppCompatActivity {

    private Button button;
    private TextView textView;
    private PatchManager patchManager;
    private static final String APATCH_PATH = "/out.apatch";
    private static final String DIR = "apatch";//补丁文件夹


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        init();
    }

    /**
     * 初始化
     */
    private void init() {
        findView();

        initPatch();
    }

    /**
     * 初始化补丁加载器
     */
    private void initPatch() {
        patchManager = ((MyApplication) getApplication()).getmPatchManager();
    }


    /**
     * 找到控件
     */
    private void findView() {
        textView = (TextView) findViewById(R.id.main_tv);

        button = (Button) findViewById(R.id.main_btn);

        setText();

        button.setOnClickListener(new PatchListener());
    }

    /**
     * 设置文本
     */
    private void setText() {
        textView.setText("no bug");
    }



    /**
     * 补丁加载监听
     */
    class PatchListener implements View.OnClickListener {

        @Override
        public void onClick(View view) {
            runPatch();
        }
    }

    private void runPatch() {
        try {
            String patchFileString = Environment.getExternalStorageDirectory()
                    .getAbsolutePath() + APATCH_PATH;
            patchManager.addPatch(patchFileString);
            //复制且加载补丁成功后，删除下载的补丁
            File f = new File(this.getFilesDir(), DIR + APATCH_PATH);
            if (f.exists()) {
                boolean result = new File(patchFileString).delete();
                if (!result){

                }
            }
        } catch (IOException e) {
        }
    }
}
