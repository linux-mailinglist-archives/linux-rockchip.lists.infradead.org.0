Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38A8E6AA64
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 16:13:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RPw+ZshvyYTWdfviorlhq0VUMplnlbiqpTmOdUL0mqI=; b=bCAO+/YvU5U8o2
	Gi4lWoHl85BF70MPskDeqgcRhGCgZJ0oDG8XusPyS6bk8BOyrconUq/8oDfcvjv8lrbMYuW9ez9b6
	h3RVT8X69dgjjOu5inIdYZ6074YBMIvoH56h4WxYG6QyG1WvIKKabTOTAMeHSMTMHCPGBfgSyhwrV
	/4SEuxwuArHpQszh/WPAPd+TNPhADAiUciSRoDbXYZrZgBufQUn5iYZTpMHiHbqMOra7mgyNuYFxj
	heDBhCv26ZuqcxPktGd/yYk6WUi2Icti6471FoLKm57Xv+lmO91XAkYAB3siEz9t9jFKyuG3zK61R
	Kl4uvmcRIrx2GDknOVoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnOCK-0001JO-KB; Tue, 16 Jul 2019 14:12:52 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnOCF-0001Id-IX
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 14:12:48 +0000
Received: by mail-oi1-x244.google.com with SMTP id w196so15641234oie.7
 for <linux-rockchip@lists.infradead.org>; Tue, 16 Jul 2019 07:12:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=h2XmDxxbJ7tU8jfvsRxWlaoaHsfnqizOFxorb/Xd+co=;
 b=Py5/obzLg1G6q0q9QNni2A4i6WspW9cxnxlS1QfRxEg9BRt1PWoOjwnaxWlw95wDhQ
 zk2XLC499vm6MTxijwxdPPDVhCQaRCFyw+qJHWt86AFA40hRMjwDOMZvCgKaj30892nR
 3Y8vkOpVAnYdsAR5GQ+/ylt+8cSq9qlPxSumsex88ZyIHEBPsauTOuHf7FrJRJlSNJ0G
 xBmJ7n3Wiqq/pFgIxlIeJn3Ms4InCCNSdUmRXMfbYZ6pVE4XIRvI/r3dn+K84uxn5ttw
 1GFLELKY4droqXKN0zwWh5as8vN/6BK+LpPAHSpEFtr3f0XWt77DBVSuhXUHhjHdb072
 ArzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=h2XmDxxbJ7tU8jfvsRxWlaoaHsfnqizOFxorb/Xd+co=;
 b=OYZBb9TZ8JrgpTrsUeV+KIUKz9s8bUcgJpcYLQzLiRwy5FHSDH1DQ3t7oe/1dYsrlo
 23vJNu44pcTbB5Z8WyrdmKDE69Uyxg3o1pm9zRTrZcZwvhOyzTXbJ0bttDaYTH4Qxqnp
 BU1jJyGz9LqtBrNJIlbFMoy6VkYslQ4EyzL3P+5YWUPXI+SMgAoH/FC7Tq7VeKTvP+sa
 Obsm1wLlVbx9yWjll2Mv4RAsvN4RWezvHpb1dq1xImw8dXI0/eo4FXEV/ITXGFYMX/WL
 ULMcmomg0uBG8Vs1P/d2U5zl4OXb8NMP+2+c/Sw29d9pdvkmR8fhBtnHTkhSK/R/p/ki
 41OQ==
X-Gm-Message-State: APjAAAVN6ENMl48aj8t82ywsudsOH0TNaMgKXP+4tdI0IalLxZalTOWV
 XVwnj1dbC4xLqqbI1r170UZUdtnopWdyHLZT3VPTZQ==
X-Google-Smtp-Source: APXvYqwhUee7Js74E9R15ZB55hgPPsCjc9xmGxHsFteJRH0BqOq9zdyWRfoMvFTu0iFTMewZbXes9U0eh+oPZWTTRe8=
X-Received: by 2002:aca:4d84:: with SMTP id a126mr17188257oib.23.1563286366223; 
 Tue, 16 Jul 2019 07:12:46 -0700 (PDT)
MIME-Version: 1.0
References: <20190716115725.66558-1-cychiang@chromium.org>
 <20190716115725.66558-3-cychiang@chromium.org>
In-Reply-To: <20190716115725.66558-3-cychiang@chromium.org>
From: Tzung-Bi Shih <tzungbi@google.com>
Date: Tue, 16 Jul 2019 22:12:35 +0800
Message-ID: <CA+Px+wWuCBvWra8+=szQOrvr3iv2YPMeoHHVtJ1vmaZWEEQ44A@mail.gmail.com>
Subject: Re: [PATCH v4 2/5] drm: bridge: dw-hdmi: Report connector status
 using callback
To: Cheng-Yi Chiang <cychiang@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_071247_644227_5C7336CC 
X-CRM114-Status: GOOD (  11.54  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: ALSA development <alsa-devel@alsa-project.org>,
 Douglas Anderson <dianders@chromium.org>, Heiko Stuebner <heiko@sntech.de>,
 Liam Girdwood <lgirdwood@gmail.com>, David Airlie <airlied@linux.ie>,
 dri-devel@lists.freedesktop.org, Takashi Iwai <tiwai@suse.com>,
 tzungbi@chromium.org, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Hans Verkuil <hverkuil@xs4all.nl>, Andrzej Hajda <a.hajda@samsung.com>,
 Russell King <rmk+kernel@armlinux.org.uk>, Mark Brown <broonie@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, linux-rockchip@lists.infradead.org,
 dgreid@chromium.org, Jaroslav Kysela <perex@perex.cz>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Tue, Jul 16, 2019 at 7:57 PM Cheng-Yi Chiang <cychiang@chromium.org> wrote:
>
> Change the Kconfig of DRM_DW_HDMI so it selects SND_SOC_HDMI_CODEC.
> This is for the typedef of hdmi_codec_plugged_cb to be used in dw-hdmi.c.
Not sure why you select SND_SOC_HDMI_CODEC in this patch.  To have
definition of hdmi_codec_plugged_cb, include hdmi-codec.h should be
sufficient.

>
> diff --git a/drivers/gpu/drm/bridge/synopsys/Kconfig b/drivers/gpu/drm/bridge/synopsys/Kconfig
> index 21a1be3ced0f..309da052db97 100644
> --- a/drivers/gpu/drm/bridge/synopsys/Kconfig
> +++ b/drivers/gpu/drm/bridge/synopsys/Kconfig
> @@ -4,6 +4,7 @@ config DRM_DW_HDMI
>         select DRM_KMS_HELPER
>         select REGMAP_MMIO
>         select CEC_CORE if CEC_NOTIFIER
> +       select SND_SOC_HDMI_CODEC
So that it is weird to select this option.

>
>  config DRM_DW_HDMI_AHB_AUDIO
>         tristate "Synopsys Designware AHB Audio interface"
> @@ -20,7 +21,6 @@ config DRM_DW_HDMI_I2S_AUDIO
>         tristate "Synopsys Designware I2S Audio interface"
>         depends on SND_SOC
>         depends on DRM_DW_HDMI
> -       select SND_SOC_HDMI_CODEC
Also strange for deselecting the option.  Should be in another commit
for another reason?

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
