Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31B4CA5562
	for <lists+linux-rockchip@lfdr.de>; Mon,  2 Sep 2019 13:58:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KRzP6ecaE5mkX6jonl5I+8mYH6i3DSywfUo2cvEpPuo=; b=synyTCMlFqgO3o
	bzlmukTE7bRXJ0dFCPK1VpFgd4gT6hI+/TvFCoyn9p9aQMsQv/1702Nt/PgchvWIyMGkTGaviKCfp
	MQrG5AWrWr3hKXcH+Gb6Q0ssEgO+fiX7CTupYAXaBkJuLfGPydBTFWWC/rOrolv4mDstRlje7bquS
	22UlmFbuTJmxWDEtP8FmjPXWtry8bx6asrNWQa9r2qGAdmG8Ygl58l5UuWUnrvDem5lvXAckTMC8p
	fYee8nzrvE6ujQGrZOecI4QRe9oRLLdUj9mhEgzBl5VriF23DkKwXpciKCP+5beihUxIjxqxecTMd
	mNPD5WnmDuxNCRLhFaLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4kyD-0001JZ-K8; Mon, 02 Sep 2019 11:58:05 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4ky9-0001Iw-Vf
 for linux-rockchip@lists.infradead.org; Mon, 02 Sep 2019 11:58:03 +0000
Received: by mail-wr1-x443.google.com with SMTP id b16so13712071wrq.9
 for <linux-rockchip@lists.infradead.org>; Mon, 02 Sep 2019 04:58:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:openpgp:autocrypt:organization
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=cIuJ4ZyO7u1R0DHww9r6ZEUVkA8fHsMxFkdXkyyL4q8=;
 b=Y7nVs9IGvhy5DYUH+6gjjsYgad9lh9VwpVhPeWOsAZGJ1HTWRuSRzGu+gHcEtLXa29
 LcZFLq0VfQ0VdnULsIWZHyDWatuoW6BuJnvA5tm4/kCW6TEnTA8bf61feFsCcjo7Izsr
 guDZ8q5G7Xu4X0JiIoGi/kQEFDeCly9pW2LiwrOlkKLvnKf4Yhn2s2AvtK5djI7LrlS4
 M/WB0KMPf/ugTtCo4xO2OPYzj3yS9UhgGIw8G9FGDqy9g0yu34E37v5CTXO2Byd4+fbx
 szog8YdlBNc/TSDtNur6qEe95Dw58e5/HycYH8fA2e7I6xNlSxPt/d8nFjZMXQafgAND
 MOKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :organization:message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=cIuJ4ZyO7u1R0DHww9r6ZEUVkA8fHsMxFkdXkyyL4q8=;
 b=hpLj4BkXnlYeLAqfbOTeJmKZTQbuMmo07ywteCl9BxLz1YYQvqSnARhXbKKfqm3KBz
 s1d/3k/g+EMZsY9TzTufhvtlhqrR5boCFiYvoIn7NME6CuPfBzYGy0zSMOYO3ICJDNTk
 jpqF8qHBsZB6nHm2PQ3XaHmp1U03sYmciz52Gcf/N8hOuG6vRf1K4hC1jm1wPDMVDzgR
 7hyLzwlo7XUdln6F3kYsUHpV7vCV1SGy5xbnZAnyIxUG+/17A72mLvJduCNQG6gcrtkC
 Nw1GCf/hXnlskKWi4qh6gy7u0FjVMH2YHMBfCS+pgpC16nzu56/jp6XzimVBeJkHn4pj
 wzKw==
X-Gm-Message-State: APjAAAWdDnuGW/fklSff4pW0P02MS1yt9uODcwSVFt0QVeIsyZEiitBv
 Yx2yjR3DWWuijwnDnlT1ilTQDg==
X-Google-Smtp-Source: APXvYqy7XooxwtcxbzDP3Qx5rs5Gg4qkUsWNe3UALra+Yh0UnaURoY2WV9WFmk1NgQTaEMd0+Q9/EA==
X-Received: by 2002:adf:e485:: with SMTP id i5mr12884281wrm.175.1567425479999; 
 Mon, 02 Sep 2019 04:57:59 -0700 (PDT)
Received: from [10.1.2.12] (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id m18sm5450088wrg.97.2019.09.02.04.57.58
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 02 Sep 2019 04:57:59 -0700 (PDT)
Subject: Re: [PATCH v2] drm: dw-hdmi-i2s: enable audio clock in audio_startup
To: Jonas Karlman <jonas@kwiboo.se>, Cheng-Yi Chiang <cychiang@chromium.org>, 
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
References: <20190902035435.44463-1-cychiang@chromium.org>
 <241fd791-3792-34c8-ac35-a81a0a41070c@baylibre.com>
 <HE1PR06MB4011E2F58875F30446D902BFACBE0@HE1PR06MB4011.eurprd06.prod.outlook.com>
From: Neil Armstrong <narmstrong@baylibre.com>
Openpgp: preference=signencrypt
Autocrypt: addr=narmstrong@baylibre.com; prefer-encrypt=mutual; keydata=
 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
 ZaTUOEkgIor5losDrePdPgE=
Organization: Baylibre
Message-ID: <9e049910-3f7a-a65c-c329-97865e35c8cc@baylibre.com>
Date: Mon, 2 Sep 2019 13:57:58 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <HE1PR06MB4011E2F58875F30446D902BFACBE0@HE1PR06MB4011.eurprd06.prod.outlook.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_045802_048291_8715DA10 
X-CRM114-Status: GOOD (  15.24  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: "alsa-devel@alsa-project.org" <alsa-devel@alsa-project.org>,
 "tzungbi@chromium.org" <tzungbi@chromium.org>,
 "zhengxing@rock-chips.com" <zhengxing@rock-chips.com>,
 "kuninori.morimoto.gx@renesas.com" <kuninori.morimoto.gx@renesas.com>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 "airlied@linux.ie" <airlied@linux.ie>,
 "jeffy.chen@rock-chips.com" <jeffy.chen@rock-chips.com>,
 "dianders@chromium.org" <dianders@chromium.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "cain.cai@rock-chips.com" <cain.cai@rock-chips.com>,
 "a.hajda@samsung.com" <a.hajda@samsung.com>,
 "eddie.cai@rock-chips.com" <eddie.cai@rock-chips.com>,
 "Laurent.pinchart@ideasonboard.com" <Laurent.pinchart@ideasonboard.com>,
 "daniel@ffwll.ch" <daniel@ffwll.ch>,
 "enric.balletbo@collabora.com" <enric.balletbo@collabora.com>,
 "dgreid@chromium.org" <dgreid@chromium.org>,
 "sam@ravnborg.org" <sam@ravnborg.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On 02/09/2019 12:32, Jonas Karlman wrote:
> On 2019-09-02 11:42, Neil Armstrong wrote:
>> Hi,
>>
>> On 02/09/2019 05:54, Cheng-Yi Chiang wrote:
>>> In the designware databook, the sequence of enabling audio clock and
>>> setting format is not clearly specified.
>>> Currently, audio clock is enabled in the end of hw_param ops after
>>> setting format.
>>>
>>> On some monitors, there is a possibility that audio does not come out.
>>> Fix this by enabling audio clock in audio_startup ops
>>> before hw_param ops setting format.
>>>
>>> Signed-off-by: Cheng-Yi Chiang <cychiang@chromium.org>
>>> Reviewed-by: Douglas Anderson <dianders@chromium.org>
>>> Reviewed-by: Jonas Karlman <jonas@kwiboo.se>
>>> Tested-by: Douglas Anderson <dianders@chromium.org>
>>> ---
>>>  Changes from v1:
>>>  1. Move audio_startup to the front of audio_shutdown.
>>>  2. Fix the indentation of audio_startup equal sign using tab.
>>>  3. Rebase the patch on linux-next/master.
>>>  4. Add Reviewed-by and Tested-by fields from dianders@chromium.org.
>>>  5. Add Reviewed-by field from jonas@kwiboo.se.
>>>
>>>  drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c | 9 +++++++++
>>>  1 file changed, 9 insertions(+)
>>>
>>> diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c
>>> index 1d15cf9b6821..34d8e837555f 100644
>>> --- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c
>>> +++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c
>>> @@ -109,6 +109,14 @@ static int dw_hdmi_i2s_hw_params(struct device *dev, void *data,
>>>  	hdmi_write(audio, conf0, HDMI_AUD_CONF0);
>>>  	hdmi_write(audio, conf1, HDMI_AUD_CONF1);
>>>  
>>> +	return 0;
>>> +}
>>> +
>>> +static int dw_hdmi_i2s_audio_startup(struct device *dev, void *data)
>>> +{
>>> +	struct dw_hdmi_i2s_audio_data *audio = data;
>>> +	struct dw_hdmi *hdmi = audio->hdmi;
>>> +
>>>  	dw_hdmi_audio_enable(hdmi);
>>>  
>>>  	return 0;
>>> @@ -153,6 +161,7 @@ static int dw_hdmi_i2s_get_dai_id(struct snd_soc_component *component,
>>>  
>>>  static struct hdmi_codec_ops dw_hdmi_i2s_ops = {
>>>  	.hw_params	= dw_hdmi_i2s_hw_params,
>>> +	.audio_startup  = dw_hdmi_i2s_audio_startup,
>>>  	.audio_shutdown	= dw_hdmi_i2s_audio_shutdown,
>>>  	.get_eld	= dw_hdmi_i2s_get_eld,
>>>  	.get_dai_id	= dw_hdmi_i2s_get_dai_id,
>>>
>> Looks sane, Jonas should I apply it now it's rebased ?
> 
> Sure, looks sane and compiles without warnings on my build host.

Thx, Applied to drm-misc-next

Neil

> 
> Regards,
> Jonas
> 
>>
>> Neil
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
