
package com.jeremias.remotecontrolwidget;

import android.appwidget.AppWidgetManager;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.hardware.Camera;
import android.hardware.ConsumerIrManager;
import android.util.Log;
import android.widget.RemoteViews;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;


public class RemWidgetReceiver extends BroadcastReceiver
{

    private static Camera camera;
    private static boolean isLightOn = false;
    ConsumerIrManager mCIR;

    public RemWidgetReceiver()
    {
    }

    protected int[] hex2dec(String s)
    {
        ArrayList arraylist;
        int i;
        arraylist = new ArrayList(Arrays.asList(s.split(" ")));
        arraylist.remove(0);
        Integer.parseInt((String)arraylist.remove(0), 16);
        arraylist.remove(0);
        arraylist.remove(0);
        i = 0;
_L5:
        if (i < arraylist.size()) goto _L2; else goto _L1
_L1:
        String s1;
        Iterator iterator;
        s1 = "";
        iterator = arraylist.iterator();
_L6:
        if (iterator.hasNext()) goto _L4; else goto _L3
_L3:
        int ai[];
        int j;
        ai = new int[arraylist.size()];
        j = 0;
_L7:
        if (j >= arraylist.size())
        {
            return ai;
        }
        break MISSING_BLOCK_LABEL_196;
_L2:
        arraylist.set(i, Integer.toString(Integer.parseInt((String)arraylist.get(i), 16)));
        i++;
          goto _L5
_L4:
        String s2 = (String)iterator.next();
        s1 = (new StringBuilder(String.valueOf(s1))).append(s2).append(",").toString();
          goto _L6
        ai[j] = Integer.parseInt((String)arraylist.get(j));
        j++;
          goto _L7
    }

    public void onReceive(Context context, Intent intent)
    {
        RemoteViews remoteviews;
        remoteviews = new RemoteViews(context.getPackageName(), 0x7f030000);
        mCIR = (ConsumerIrManager)context.getSystemService("consumer_ir");
        if (!mCIR.hasIrEmitter())
        {
            Log.e("IR", "No IR Emitter found\n");
            return;
        }
        if (intent.getAction() != "COM_FLASHLIGHT") goto _L2; else goto _L1
_L1:
        int ai4[] = hex2dec("0000 006D 0022 0002 0155 00AA 0015 0040 0015 0015 0015 0015 0015 0015 0015 0015 0015 0015 0015 0015 0015 0015 0015 0015 0015 0040 0015 0040 0015 0040 0015 0040 0015 0040 0015 0040 0015 0040 0015 0015 0015 0040 0015 0015 0015 0015 0015 0015 0015 0015 0015 0015 0015 0015 0015 0040 0015 0015 0015 0040 0015 0040 0015 0040 0015 0040 0015 0040 0015 0040 0015 05ED 0155 0055 0015 0E47");
        mCIR.transmit(38028, ai4);
_L4:
        Log.e("IR", intent.getAction());
        AppWidgetManager.getInstance(context).updateAppWidget(new ComponentName(context, com/jeremias/remotecontrolwidget/Main), remoteviews);
        Log.i("System.out", "Hello1111!");
        return;
_L2:
        if (intent.getAction() == "COM_SOURCE")
        {
            int ai3[] = hex2dec("0000 006D 0022 0002 0155 00AA 0015 0040 0015 0015 0015 0015 0015 0015 0015 0015 0015 0015 0015 0015 0015 0015 0015 0015 0015 0040 0015 0040 0015 0040 0015 0040 0015 0040 0015 0040 0015 0040 0015 0040 0015 0015 0015 0040 0015 0015 0015 0015 0015 0015 0015 0015 0015 0015 0015 0015 0015 0040 0015 0015 0015 0040 0015 0040 0015 0040 0015 0040 0015 0040 0015 05ED 0155 0055 0015 0E47");
            mCIR.transmit(38028, ai3);
        } else
        if (intent.getAction() == "COM_VOLUP")
        {
            int ai2[] = hex2dec("0000 006D 0022 0002 0155 00AA 0015 0040 0015 0015 0015 0015 0015 0015 0015 0015 0015 0015 0015 0015 0015 0015 0015 0015 0015 0040 0015 0040 0015 0040 0015 0040 0015 0040 0015 0040 0015 0040 0015 0040 0015 0040 0015 0040 0015 0040 0015 0040 0015 0015 0015 0015 0015 0015 0015 0015 0015 0015 0015 0015 0015 0015 0015 0015 0015 0040 0015 0040 0015 0040 0015 05ED 0155 0055 0015 0E47");
            mCIR.transmit(38028, ai2);
        } else
        if (intent.getAction() == "COM_VOLDOWN")
        {
            int ai1[] = hex2dec("0000 006D 0022 0002 0155 00AA 0015 0040 0015 0015 0015 0015 0015 0015 0015 0015 0015 0015 0015 0015 0015 0015 0015 0015 0015 0040 0015 0040 0015 0040 0015 0040 0015 0040 0015 0040 0015 0040 0015 0015 0015 0040 0015 0040 0015 0040 0015 0040 0015 0015 0015 0015 0015 0015 0015 0040 0015 0015 0015 0015 0015 0015 0015 0015 0015 0040 0015 0040 0015 0040 0015 05ED 0155 0055 0015 0E47");
            mCIR.transmit(38028, ai1);
        } else
        if (intent.getAction() == "COM_MUTE")
        {
            int ai[] = hex2dec("0000 006D 0022 0002 0155 00AA 0015 0040 0015 0015 0015 0015 0015 0015 0015 0015 0015 0015 0015 0015 0015 0015 0015 0015 0015 0040 0015 0040 0015 0040 0015 0040 0015 0040 0015 0040 0015 0040 0015 0040 0015 0015 0015 0015 0015 0040 0015 0040 0015 0015 0015 0015 0015 0015 0015 0015 0015 0040 0015 0040 0015 0015 0015 0015 0015 0040 0015 0040 0015 0040 0015 05ED 0155 0055 0015 0E47");
            mCIR.transmit(38028, ai);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

}
