package com.opensource.legosdk.plugin.vibrate

import com.opensource.legosdk.core.*
import org.json.JSONObject

class LGOVibrate: LGOModule() {

    override fun buildWithJSONObject(obj: JSONObject, context: LGORequestContext): LGORequestable? {
        val request = LGOVibrateRequest(context)
        
        return LGOVibrateOperation(request)
    }

}