Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5956A19EBDE
	for <lists+linux-rockchip@lfdr.de>; Sun,  5 Apr 2020 16:07:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DFMQ9i+YUjpV/YU9AJWZ/1NOYZXkKvmaRrA1GXDxfrQ=; b=cADWSOfGPtba60
	K9h7vBug0zIQD5IWltul3mbEB1E8aYU7nIGQC+Y5XqDmJCExCx5TZp/N/K1pyxb/AOiWMAFEjZMDL
	ZZo8RMFqaX810qPx9btEJ59vAVdUvwZngNbMVjuW6CU5X6VIQCKs99hjIUL8hTYpmpkCMMjwPy1fS
	lYlOpzaUrWJ4jkWPmAN1dUf3DRgOSwaV3pcw3TckMWY7OzfwUNMrII1mt655tH4QjUEjztEQk1bzp
	waXGK6RwGfThwc3wjvhpJXt/vojOeuzBgA0HvvwU2oi7vuSiAOgSIr9l/RptNwPeW3YotIXLAO+lg
	7lLezIv+DKIXO6hWWIhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jL5vt-0003Jt-SR; Sun, 05 Apr 2020 14:07:29 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jL5vq-0003JL-9B
 for linux-rockchip@lists.infradead.org; Sun, 05 Apr 2020 14:07:27 +0000
Received: by mail-pj1-x1041.google.com with SMTP id kx8so5274069pjb.5
 for <linux-rockchip@lists.infradead.org>; Sun, 05 Apr 2020 07:07:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=DaGUMjiO33yRPedgPfXTpsd1WYQQwnPU02b1zLvQ1I8=;
 b=X/UxUBI5xfYrzIgDb83FVMlbHZLntE9UrQTTG2bboWU76/yoaKgYibC+lhEjTSn59v
 jal0ztrYnnslRxLGYVG0CkOgZpBk8V66uw/E1aGXINW0G0fckgHV/GO6/W9bDyQ38/eH
 l+PEfZcIM38Vi0cmSya8eFCFi4bHeoF9kBQOMTqg2gOTD6Xw7uh+t/V/wJEHXw+sEL18
 ME0PAsfRNKcDqf3yM4npYheUbcy/1prBkzeeXWuvRQeRScR6hgXwQoRLXisaXUCfQUTR
 td5FJqFE8eKqtLqs9wbtll+GCDnveXi+HRocV2JyQO4euQ2lxD4gQ2GlyGLOiXQHnMeu
 KMtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=DaGUMjiO33yRPedgPfXTpsd1WYQQwnPU02b1zLvQ1I8=;
 b=BQjmTvLQm7h3mo6ux8G5fTKPy06tZ1Lt2ijDy1/TRil5lb1HeJ/Anx51ZASJgtEmI/
 KYdj6N4PdTKiV0SSRSZXKxCFuWqAmEWINWQn5NuhhyDA5eMVxNTNfY7ekAuYLWWaxnTS
 2Dw+n3O481uLVIPdOD1a5cnBIg4mvrFEj0GZBAJCLWs1et2lHpqmWfnDEX9zBSLQtXhB
 J/3pzjjl0GRUiFf80eafEXBY1FfJ/bhfyOB98+/wJli5/90XsECahCj88exSqmNxfo0q
 IB3z16WsIWKs8STkc/AUxtRSoqtSgBBLKX9gXOAzVajPv0d1G0NKu9sgFdNMwxCjqF+S
 wKiA==
X-Gm-Message-State: AGi0Pua5xtBy0WXc6PEF1Uq9JHt48vcf2UBjlxz907CK6VtdZ0uEA0s4
 cHzZCM1J5QjbBuR3F/KhVzkG
X-Google-Smtp-Source: APiQypJRd2r5o+vQ9VXXxlOCwBCkGTttGJzznw1DoFR3pe9htSFjBkvTlOjxOpMhysVIgrxzGulZyA==
X-Received: by 2002:a17:902:d70d:: with SMTP id
 w13mr16897787ply.322.1586095645418; 
 Sun, 05 Apr 2020 07:07:25 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([2409:4072:6e83:b2ab:75aa:fbdc:e9da:9d96])
 by smtp.gmail.com with ESMTPSA id k1sm951730pgh.72.2020.04.05.07.07.19
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 05 Apr 2020 07:07:24 -0700 (PDT)
Date: Sun, 5 Apr 2020 19:37:16 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Jagan Teki <jagan@amarulasolutions.com>
Subject: Re: [PATCH v3 4/5] rockchip: Enable HDMI output on rk3399 board w/
 HDMI
Message-ID: <20200405140716.GS8912@Mani-XPS-13-9360>
References: <20200402114125.2501-1-jagan@amarulasolutions.com>
 <20200402114125.2501-5-jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200402114125.2501-5-jagan@amarulasolutions.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200405_070726_414118_6EEF89C0 
X-CRM114-Status: GOOD (  14.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1041 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Kever Yang <kever.yang@rock-chips.com>, u-boot@lists.denx.de,
 sunil@amarulasolutions.com, Anatolij Gustschin <agust@denx.de>,
 linux-amarula@amarulasolutions.com, Mark Kettenis <mark.kettenis@xs4all.nl>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Thu, Apr 02, 2020 at 05:11:24PM +0530, Jagan Teki wrote:
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

For Rock960,

Acked-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

Thanks,
Mani

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
> +		"stdin=serial,usbkbd\0" \
> +		"stdout=serial,vidconsole\0" \
> +		"stderr=serial,vidconsole\0"
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
> +		"stdin=serial,usbkbd\0" \
> +		"stdout=serial,vidconsole\0" \
> +		"stderr=serial,vidconsole\0"
> +
>  #include <configs/rk3399_common.h>
>  
>  #define CONFIG_SYS_MMC_ENV_DEV		1
> -- 
> 2.17.1
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
