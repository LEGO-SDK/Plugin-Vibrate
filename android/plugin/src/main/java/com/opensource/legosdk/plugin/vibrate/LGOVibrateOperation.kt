package com.opensource.legosdk.plugin.vibrate

import android.content.Context
import com.opensource.legosdk.core.LGORequestable
import com.opensource.legosdk.core.LGOResponse
import android.content.Context.VIBRATOR_SERVICE
import android.os.Vibrator



/**
 * Created by cuiminghui on 2017/10/17.
 */
class LGOVibrateOperation(val request: LGOVibrateRequest): LGORequestable() {

    override fun requestSynchronize(): LGOResponse {
        request.context?.requestActivity()?.let { requestActivity ->
            val vibrator = requestActivity.getSystemService(Context.VIBRATOR_SERVICE) as? Vibrator
            vibrator?.vibrate(500)
        }
        return LGOVibrateResponse().accept(null)
    }

    override fun requestAsynchronize(callbackBlock: (LGOResponse) -> Unit) {
        callbackBlock.invoke(requestSynchronize())
    }

}