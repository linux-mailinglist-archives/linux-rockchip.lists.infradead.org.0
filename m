Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE5BE70C47
	for <lists+linux-rockchip@lfdr.de>; Tue, 23 Jul 2019 00:02:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bobK2gPkcas1TRObiDn6Ax5+gMy3u8oWqmyoBnihcO0=; b=CqjiQSK3h9MHuB
	36LcmVCZo6hNHvaDlu4oxx7zG1AUBu6qXQGbWZIQ0wnRD+xNMhxgh3CoFYORIjHqPQvlxZCgTvCU6
	iwyMGp2NVf0p/jff0tldXDrRswjNFiJIBvv9wQEPSAQ4MyaPyKl4Oh+RPsUWBluf0ca8bC09prpOc
	radNrEG7fRsGPiiiA5tOGR0ePB1ZrPXyycYk0Vkp4NhoGp4PTlduNP0M9PMFh9hzTf/sxcVA3GV9g
	qNtTBmKXvPxTMbi4qnWfkXSYW0RpjTshm9oPhozg9h2QsISzo5tr0DpHbGgeiFiZn0Hm8DYUSFvhd
	JtQB8C/2yx1m6WcV8sJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpgNb-0001Yh-2C; Mon, 22 Jul 2019 22:01:59 +0000
Received: from mail-io1-f66.google.com ([209.85.166.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpgNF-0001Mx-07; Mon, 22 Jul 2019 22:01:38 +0000
Received: by mail-io1-f66.google.com with SMTP id j6so2302233ioa.5;
 Mon, 22 Jul 2019 15:01:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=317qAQxotsgQLMyHaOatEPkOpAMyuma68l0S3IPmCaI=;
 b=glVrX6JxVzYPLFiGancTYY7tbwnO26+Fvu2Gunn68HmXJQvAum1KL1xttdIzfqh8Wu
 6sV9i/vEE6h0UeMfoOt6YrSdafRDzRE834US9WX8cCX+wkGjJvXtZkzP2bL7O/VlRALb
 2nNnzWdvooafJwobeg5CeGE1qx71ywEgZzBovhilJSx6g17mfaZTXwIt8IY6wAgRTd+g
 iVvbsReNf7pR1t+Qt8Ew+88v13cToOdbYx9dUllrfRp1GYAV8g0hUrX/odilQV/WQ8Dg
 BS890ghpIZu7Op/5eRDT+e5DVWoyuapHSqCy8Pwd9LtLSIVMOZL3JHFhc+/axX2RAqWy
 7K0g==
X-Gm-Message-State: APjAAAXgzai4vzUom267shEg6dLvS9cx5dy5/sstxlncNiy3wq9UzU7o
 bOvztAcz2KWV5BnUdL3HkA==
X-Google-Smtp-Source: APXvYqztwogHmK5lyRPBzlOeroG5MXmFrVdx5UE5txZpgI4VvzYvgFsczv8iMCAnS69d8QVpaTBpZw==
X-Received: by 2002:a5d:9643:: with SMTP id d3mr70534966ios.227.1563832896219; 
 Mon, 22 Jul 2019 15:01:36 -0700 (PDT)
Received: from localhost ([64.188.179.254])
 by smtp.gmail.com with ESMTPSA id c81sm63005975iof.28.2019.07.22.15.01.35
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 22 Jul 2019 15:01:35 -0700 (PDT)
Date: Mon, 22 Jul 2019 16:01:34 -0600
From: Rob Herring <robh@kernel.org>
To: Manish Narani <manish.narani@xilinx.com>
Subject: Re: [PATCH v2 07/11] dt-bindings: mmc: arasan: Add optional
 properties for Arasan SDHCI
Message-ID: <20190722220134.GA8281@bogus>
References: <1561958991-21935-1-git-send-email-manish.narani@xilinx.com>
 <1561958991-21935-8-git-send-email-manish.narani@xilinx.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1561958991-21935-8-git-send-email-manish.narani@xilinx.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_150137_052585_F551260D 
X-CRM114-Status: GOOD (  14.41  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.66 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: mark.rutland@arm.com, ulf.hansson@linaro.org, kernel@esmil.dk,
 viresh.kumar@linaro.org, linux-kernel@vger.kernel.org, tony.xie@rock-chips.com,
 philipp.tomsich@theobroma-systems.com, heiko@sntech.de,
 michal.simek@xilinx.com, linux-rockchip@lists.infradead.org,
 jolly.shah@xilinx.com, devicetree@vger.kernel.org, scott.branden@broadcom.com,
 nava.manne@xilinx.com, ayaka@soulik.info, mdf@kernel.org,
 linux-arm-kernel@lists.infradead.org, rajan.vaja@xilinx.com,
 linux-mmc@vger.kernel.org, adrian.hunter@intel.com, olof@lixom.net,
 christoph.muellner@theobroma-systems.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Mon, Jul 01, 2019 at 10:59:47AM +0530, Manish Narani wrote:
> Add optional propeties for Arasan SDHCI which are used to set clk delays
> for different speed modes in the controller.
> 
> Signed-off-by: Manish Narani <manish.narani@xilinx.com>
> ---
>  Documentation/devicetree/bindings/mmc/arasan,sdhci.txt | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/mmc/arasan,sdhci.txt b/Documentation/devicetree/bindings/mmc/arasan,sdhci.txt
> index 7c79496..7425d52 100644
> --- a/Documentation/devicetree/bindings/mmc/arasan,sdhci.txt
> +++ b/Documentation/devicetree/bindings/mmc/arasan,sdhci.txt
> @@ -49,6 +49,21 @@ Optional Properties:
>      properly. Test mode can be used to force the controller to function.
>    - xlnx,int-clock-stable-broken: when present, the controller always reports
>      that the internal clock is stable even when it is not.
> +  - clk-phase-legacy: Input/Output Clock Delay pair in degrees for Legacy Mode.
> +  - clk-phase-mmc-hs: Input/Output Clock Delay pair degrees for MMC HS.
> +  - clk-phase-sd-hs: Input/Output Clock Delay pair in degrees for SD HS.
> +  - clk-phase-uhs-sdr12: Input/Output Clock Delay pair in degrees for SDR12.
> +  - clk-phase-uhs-sdr25: Input/Output Clock Delay pair in degrees for SDR25.
> +  - clk-phase-uhs-sdr50: Input/Output Clock Delay pair in degrees for SDR50.
> +  - clk-phase-uhs-sdr104: Input/Output Clock Delay pair in degrees for SDR104.
> +  - clk-phase-uhs-ddr50: Input/Output Clock Delay pair in degrees for SD DDR50.
> +  - clk-phase-mmc-ddr52: Input/Output Clock Delay pair in degrees for MMC DDR52.
> +  - clk-phase-mmc-hs200: Input/Output Clock Delay pair in degrees for MMC HS200.
> +  - clk-phase-mmc-hs400: Input/Output Clock Delay pair in degrees for MMC HS400.

Either these need vendor prefixes or be added as common properties if 
that makes sense.

Rob

> +
> +  Above mentioned are the clock (phase) delays which are to be configured in the
> +  controller while switching to particular speed mode. If not specified, driver
> +  will configure the default value defined for particular mode in it.
>  
>  Example:
>  	sdhci@e0100000 {
> -- 
> 2.1.1
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
