package com.wangzuo.andfix;

import android.app.Application;
import android.os.Environment;
import android.util.Log;

import com.alipay.euler.andfix.patch.PatchManager;

import java.io.File;
import java.io.IOException;

/**
 * Created by hasee on 2016/9/23.
 */

public class MyApplication extends Application {





    private PatchManager mPatchManager;

    public PatchManager getmPatchManager() {
        return mPatchManager;
    }

    @Override
    public void onCreate() {
        super.onCreate();
        init();
    }

    /**
     * 初始化
     */
    private void init() {

        initPatch();


    }

    private void initPatch() {
        mPatchManager = new PatchManager(this);
        mPatchManager.init("1.0");

        mPatchManager.loadPatch();
    }

}
