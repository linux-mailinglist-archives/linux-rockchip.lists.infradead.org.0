Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D14519C140
	for <lists+linux-rockchip@lfdr.de>; Thu,  2 Apr 2020 14:38:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1ipZoPFlL/OGUHF+X7dmvLhjsZYgSjs2GgW88aeZkVI=; b=op9SeEEE4IrcB7
	6n24m6Or8IRsAk/bbX0ctQ77xwyMruWXtMFvz0vyzltyTkvzyFrPL0OUw1dL+qhW0vv+hDD4egtcg
	O0+ryN4Y63pdsF+8odEJtkhZ4gl71+cXQmuykboX+f26vkAfsi5AS+hiY+m9yk3hhSpzy7YuBv/fl
	RODfEZ/kWGqHBm5/Xfkx8ki/AmXH3zYGRdGiMeWDaWF7zXaVivVP+4xAUtuR8NP1ilFBM1xKok8jL
	JJzzMWu+O7qU78KmLNi2znDCdyPl61ivL4kILZatE+bgxm5P3h98QovPxmy8zgdO8bqff6Ral6HXI
	XnBIpOtbC+mNnUMxOWyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJz6w-0004MN-MN; Thu, 02 Apr 2020 12:38:18 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJz6u-0004Lt-03
 for linux-rockchip@lists.infradead.org; Thu, 02 Apr 2020 12:38:17 +0000
Received: by mail-io1-xd41.google.com with SMTP id y17so1280399iow.9
 for <linux-rockchip@lists.infradead.org>; Thu, 02 Apr 2020 05:38:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=idxYfeFCRwc+9sXLpheZNzON8I5gH6Bn79fZJBg6GLM=;
 b=juFEr51l6nflaiyAG4lAQeTlTHHAGecN4zsJ+/5RHORfj6hCdZ97XUvLN5W06kn7hq
 /3z7J8DFDKpBZgTY9LopB+kd4u5ZpO/yXdPmzWARJX0dl10e2p23EtuFTLt86+r/gcYn
 LSdLzTE4I75qzvfyoWYOc6xevVIhYUmI3PhVgq3wwiVlSsAHrv9/5Mxsfe1pprFQAJaf
 lagmLZFosIRugT5oBKl80OVFHfPDIDi1gTiT2d4iY8TR6ofjFDkWN2ao887s8lRoAVai
 OUjAxppqNscexiv0zkANNaWsAO4j121Zkg6KdQFNgmA1QTFbAkvj7JlSWOTzc7Cp8/bG
 +6/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=idxYfeFCRwc+9sXLpheZNzON8I5gH6Bn79fZJBg6GLM=;
 b=sr8MbsCpFLKTwvK0cPne9Gc95mKrmS6k6AiNg0BfzBS1GcgrOQYbIrIh8ue5C4a79l
 bD81tcWW4EWdF4lftkssx2CLFZTjs1FGXj19TmnVvO0XEw2YrfF5isSeIb2raCZ5hqEL
 pQR7Kqt1rTcmPai6plJVxl9Ecyl0F7BlwCHLsk7pCBJH8cZMUq++eJJtygdzTSyFjG/o
 Ts2Bw1Am83cg9yeoYDm5kLX36/ii2zrSWtm7ZWC5vhkaKmwO06jpZ0ftFlCO4fedrvaU
 aW+q+KfW8sIGlrKR+jzlSRi5P5tuVwb4a5SGJSWXjAVH7brDanro0EmA+GJ5U2Ya4IQp
 A/Ag==
X-Gm-Message-State: AGi0PuYZ1ryqTu+YSGtKVNF7/TnTJTsePqtAcih9hNpU6hzBv6Ng+PF1
 4qtRWIZeL68e9GiL2xCWLvD24ky98TSeFTZCdxCoCSSSX+E=
X-Google-Smtp-Source: APiQypK+atwCkL5Pf7uWx8T54ng1K7SArrprVK5PJnJ693KfesTsai8O4QsSXOowuZqmUtBAU+hQeuiQL5PLm4C0vBM=
X-Received: by 2002:a5e:9e0a:: with SMTP id i10mr2577463ioq.173.1585831093188; 
 Thu, 02 Apr 2020 05:38:13 -0700 (PDT)
MIME-Version: 1.0
References: <20200402114125.2501-1-jagan@amarulasolutions.com>
 <20200402114125.2501-5-jagan@amarulasolutions.com>
In-Reply-To: <20200402114125.2501-5-jagan@amarulasolutions.com>
From: Peter Robinson <pbrobinson@gmail.com>
Date: Thu, 2 Apr 2020 13:38:01 +0100
Message-ID: <CALeDE9Ph_iwaGd+z7bWOgBpHE9hDkg6G74rNeKxcbDgOrSVXRQ@mail.gmail.com>
Subject: Re: [PATCH v3 4/5] rockchip: Enable HDMI output on rk3399 board w/
 HDMI
To: Jagan Teki <jagan@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_053816_038003_49DCCF48 
X-CRM114-Status: GOOD (  14.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [pbrobinson[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 linux-rockchip@lists.infradead.org, Simon Glass <sjg@chromium.org>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Kever Yang <kever.yang@rock-chips.com>, u-boot@lists.denx.de,
 sunil@amarulasolutions.com, Anatolij Gustschin <agust@denx.de>,
 linux-amarula@amarulasolutions.com, Mark Kettenis <mark.kettenis@xs4all.nl>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

> Enable config options and console setting to respective
> rk3399 board for HDMI output.
>
> Boards supported and tested on this patch are:
> - NanoPc T4
> - NanoPi M4
> - NanoPi Neo4
> - ROC-RK3399-PC
> - Rock960
>
> Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Tested-by: Peter Robinson <pbrobinson@gmail.com>

Tested on the Rock960 rev 1.2, I'm guessing the firefly-rk3399 should
be able to be enabled in a similar manner, will try and test that as
well when I get a moment.

> ---
> Changes for v3:
> - add rock960 hdmi out support
>
>  configs/nanopc-t4-rk3399_defconfig   | 7 +++++++
>  configs/nanopi-m4-rk3399_defconfig   | 7 +++++++
>  configs/nanopi-neo4-rk3399_defconfig | 7 +++++++
>  configs/roc-pc-rk3399_defconfig      | 6 ++++++
>  configs/rock960-rk3399_defconfig     | 7 +++++++
>  include/configs/evb_rk3399.h         | 5 +++++
>  include/configs/rock960_rk3399.h     | 5 +++++
>  7 files changed, 44 insertions(+)
>
> diff --git a/configs/nanopc-t4-rk3399_defconfig b/configs/nanopc-t4-rk3399_defconfig
> index 9ea9b11574..607a00dbf7 100644
> --- a/configs/nanopc-t4-rk3399_defconfig
> +++ b/configs/nanopc-t4-rk3399_defconfig
> @@ -52,5 +52,12 @@ CONFIG_USB_ETHER_ASIX88179=y
>  CONFIG_USB_ETHER_MCS7830=y
>  CONFIG_USB_ETHER_RTL8152=y
>  CONFIG_USB_ETHER_SMSC95XX=y
> +CONFIG_USB_KEYBOARD=y
>  CONFIG_SPL_TINY_MEMSET=y
>  CONFIG_ERRNO_STR=y
> +CONFIG_DM_VIDEO=y
> +CONFIG_VIDEO_BPP16=y
> +CONFIG_VIDEO_BPP32=y
> +CONFIG_DISPLAY=y
> +CONFIG_VIDEO_ROCKCHIP=y
> +CONFIG_DISPLAY_ROCKCHIP_HDMI=y
> diff --git a/configs/nanopi-m4-rk3399_defconfig b/configs/nanopi-m4-rk3399_defconfig
> index ad0e808bf6..3fcb7ac2d7 100644
> --- a/configs/nanopi-m4-rk3399_defconfig
> +++ b/configs/nanopi-m4-rk3399_defconfig
> @@ -52,5 +52,12 @@ CONFIG_USB_ETHER_ASIX88179=y
>  CONFIG_USB_ETHER_MCS7830=y
>  CONFIG_USB_ETHER_RTL8152=y
>  CONFIG_USB_ETHER_SMSC95XX=y
> +CONFIG_USB_KEYBOARD=y
>  CONFIG_SPL_TINY_MEMSET=y
>  CONFIG_ERRNO_STR=y
> +CONFIG_DM_VIDEO=y
> +CONFIG_VIDEO_BPP16=y
> +CONFIG_VIDEO_BPP32=y
> +CONFIG_DISPLAY=y
> +CONFIG_VIDEO_ROCKCHIP=y
> +CONFIG_DISPLAY_ROCKCHIP_HDMI=y
> diff --git a/configs/nanopi-neo4-rk3399_defconfig b/configs/nanopi-neo4-rk3399_defconfig
> index d038a8cab9..b9ea535e43 100644
> --- a/configs/nanopi-neo4-rk3399_defconfig
> +++ b/configs/nanopi-neo4-rk3399_defconfig
> @@ -52,5 +52,12 @@ CONFIG_USB_ETHER_ASIX88179=y
>  CONFIG_USB_ETHER_MCS7830=y
>  CONFIG_USB_ETHER_RTL8152=y
>  CONFIG_USB_ETHER_SMSC95XX=y
> +CONFIG_USB_KEYBOARD=y
>  CONFIG_SPL_TINY_MEMSET=y
>  CONFIG_ERRNO_STR=y
> +CONFIG_DM_VIDEO=y
> +CONFIG_VIDEO_BPP16=y
> +CONFIG_VIDEO_BPP32=y
> +CONFIG_DISPLAY=y
> +CONFIG_VIDEO_ROCKCHIP=y
> +CONFIG_DISPLAY_ROCKCHIP_HDMI=y
> diff --git a/configs/roc-pc-rk3399_defconfig b/configs/roc-pc-rk3399_defconfig
> index d540a17aeb..be76524cef 100644
> --- a/configs/roc-pc-rk3399_defconfig
> +++ b/configs/roc-pc-rk3399_defconfig
> @@ -59,3 +59,9 @@ CONFIG_USB_ETHER_SMSC95XX=y
>  CONFIG_USB_KEYBOARD=y
>  CONFIG_SPL_TINY_MEMSET=y
>  CONFIG_ERRNO_STR=y
> +CONFIG_DM_VIDEO=y
> +CONFIG_VIDEO_BPP16=y
> +CONFIG_VIDEO_BPP32=y
> +CONFIG_DISPLAY=y
> +CONFIG_VIDEO_ROCKCHIP=y
> +CONFIG_DISPLAY_ROCKCHIP_HDMI=y
> diff --git a/configs/rock960-rk3399_defconfig b/configs/rock960-rk3399_defconfig
> index ba4226e173..c4e954731a 100644
> --- a/configs/rock960-rk3399_defconfig
> +++ b/configs/rock960-rk3399_defconfig
> @@ -58,5 +58,12 @@ CONFIG_USB_ETHER_ASIX88179=y
>  CONFIG_USB_ETHER_MCS7830=y
>  CONFIG_USB_ETHER_RTL8152=y
>  CONFIG_USB_ETHER_SMSC95XX=y
> +CONFIG_USB_KEYBOARD=y
>  CONFIG_SPL_TINY_MEMSET=y
>  CONFIG_ERRNO_STR=y
> +CONFIG_DM_VIDEO=y
> +CONFIG_VIDEO_BPP16=y
> +CONFIG_VIDEO_BPP32=y
> +CONFIG_DISPLAY=y
> +CONFIG_VIDEO_ROCKCHIP=y
> +CONFIG_DISPLAY_ROCKCHIP_HDMI=y
> diff --git a/include/configs/evb_rk3399.h b/include/configs/evb_rk3399.h
> index c0b0358893..2d3db22877 100644
> --- a/include/configs/evb_rk3399.h
> +++ b/include/configs/evb_rk3399.h
> @@ -6,6 +6,11 @@
>  #ifndef __EVB_RK3399_H
>  #define __EVB_RK3399_H
>
> +#define ROCKCHIP_DEVICE_SETTINGS \
> +               "stdin=serial,usbkbd\0" \
> +               "stdout=serial,vidconsole\0" \
> +               "stderr=serial,vidconsole\0"
> +
>  #include <configs/rk3399_common.h>
>
>  #if defined(CONFIG_ENV_IS_IN_MMC)
> diff --git a/include/configs/rock960_rk3399.h b/include/configs/rock960_rk3399.h
> index 746d24cbff..304ad2b7aa 100644
> --- a/include/configs/rock960_rk3399.h
> +++ b/include/configs/rock960_rk3399.h
> @@ -6,6 +6,11 @@
>  #ifndef __ROCK960_RK3399_H
>  #define __ROCK960_RK3399_H
>
> +#define ROCKCHIP_DEVICE_SETTINGS \
> +               "stdin=serial,usbkbd\0" \
> +               "stdout=serial,vidconsole\0" \
> +               "stderr=serial,vidconsole\0"
> +
>  #include <configs/rk3399_common.h>
>
>  #define CONFIG_SYS_MMC_ENV_DEV         1
> --
> 2.17.1
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
