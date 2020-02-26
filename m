Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A13C316FEDF
	for <lists+linux-rockchip@lfdr.de>; Wed, 26 Feb 2020 13:25:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:Subject:References:To:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ieBg4BxAfUOgJF1LlkUSiviMtazwidL5Zy2ObN9SL2o=; b=Ew50FaEGX6bQ4O
	jPq9OnYPra26Z+OWsnW2xEFK9dGUCvnDA6PD3S7dHeifSUjPFftdQ5RoVVbnVqEdL4cvdEn2jkUzp
	D5isKMsX7wWYGyFKQVX7l20I6WD7TDA9k7YUDrBN2l7X1DlR1cBs7Ut6Ri5FSYL2ChAtO7DGPx4Rb
	s+J88u/gi9Z67nHTxIm8MCGX1NZfOo/KRvLURh3YjgFIyaxG5u/7FZi/tb1QU+EJUaO7rxyQTvbsk
	uFJEMl+acMnkRH9xeka8Glce9arSl5jRpE0pEqWdwJyRrhXsTT+nb7oLdKj7l/SphI6+abVggPF4j
	NFIoUzmUc1Jm3gBDMy6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6vkM-0003Wq-Ss; Wed, 26 Feb 2020 12:25:02 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6vkI-0003WI-5Y
 for linux-rockchip@lists.infradead.org; Wed, 26 Feb 2020 12:24:59 +0000
Received: by mail-wm1-x341.google.com with SMTP id q9so2824117wmj.5
 for <linux-rockchip@lists.infradead.org>; Wed, 26 Feb 2020 04:24:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:cc:references:subject:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=IvhXItdd4X1YXydMqRqD+tdcTcMEd0LYsl8PcoH++pk=;
 b=Pm5HWF73aJ9VZcK/5Zlg1TkuMduL1Z0xp2H7Tf54k04xSGZJJXLHLvKQeMdHL+zJYr
 pPiwRu+UndJu3ZSYNetFEJdoMpn2fyL8aufv0VPRtbL3/nvBusVWG+5yztsop2Dv+UU3
 AoeyskahRt+cDZAxIsfHiT8TbsUPrhERZ0kK0iBKH0iWuILF0PbKXDlODXyBTmFYTH8F
 zy/4nUoxWO0igZl95eYU2cbPiOZSSbL543ND5gG+xJo+CCZv1YY8iFW0gGJfpYzPCrnB
 0T9KuaH6iqs9hgFnT3hqGoAy9nSzJi0M3gsFxzE3eLM2t1zv2yTU2VUgy2A2wNWWGehp
 llGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:cc:references:subject:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=IvhXItdd4X1YXydMqRqD+tdcTcMEd0LYsl8PcoH++pk=;
 b=qx2OUXk9Rww/3OIDgq0jmclGcJvZ+ZRZfTEKYEWgSx4wHo/iR0SxeOHrs0rxm3eknM
 BY3utFTdpmc9kMlWLLc0YipT2a61PciaZpWJjlGbk0Rhidp8cORHO2YJt8UXTtieZfbK
 IdiX/ZwVfcX5kQ7rP9aa/IHnsTlcV5JMNGSIV7iQFjflVR9YcOj0kqVlyUP5+u2yovut
 k5AI9tjf3XNFxosi4pAy9RNGP3wHrPZTgaciubxLKtzzw/hKZQzon2TXgv/kyjAmlULR
 DsuOcHDLQajoIhl25XpmNGcPFY6V2WfkR2a3t4NEXoaSC2pOFxuU1vXOTOmxJmJzKiQH
 poGA==
X-Gm-Message-State: APjAAAUdYJutCKHcdjcEac46H6fq9IanFRc7WIq0fFjoTPckxmlLyuL7
 98GozwkQ0LWv1Fs3AKa6SBM=
X-Google-Smtp-Source: APXvYqzyTzyUPRQdIy8Rfhx8ubVi+C6umoNFwiXeFqS0v+Ld0G8ObmhzMOrwd3BzwL6ZjxmlWPhcrg==
X-Received: by 2002:a1c:7718:: with SMTP id t24mr5311847wmi.119.1582719896307; 
 Wed, 26 Feb 2020 04:24:56 -0800 (PST)
Received: from [192.168.2.1] (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id g14sm3226354wrv.58.2020.02.26.04.24.55
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 26 Feb 2020 04:24:55 -0800 (PST)
To: ezequiel@collabora.com
References: <20200220163016.21708-7-ezequiel@collabora.com>
Subject: Re: [PATCH v6 6/6] arm64: dts: rockchip: rk3399: Define the rockchip
 Video Decoder node
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <817821e3-bc51-8037-b9b9-e429c5eeb280@gmail.com>
Date: Wed, 26 Feb 2020 13:24:53 +0100
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200220163016.21708-7-ezequiel@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_042458_234792_7D572BF6 
X-CRM114-Status: GOOD (  15.39  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, tfiga@chromium.org, heiko@sntech.de,
 jonas@kwiboo.se, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 nicolas@ndufresne.ca, hverkuil@xs4all.nl, linux-rockchip@lists.infradead.org,
 boris.brezillon@collabora.com, sakari.ailus@iki.fi,
 laurent.pinchart@ideasonboard.com, kernel@collabora.com,
 paul.kocialkowski@bootlin.com, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Boris,

Dtsi nodes are sort on address.
The vdec node is now inserted between:

vdec_mmu: iommu       @ff660480
vdec    : video-codec @ff660000
iep_mmu : iommu       @ff670800

This should be:

vpu_mmu : iommu       @ff650800
vdec    : video-codec @ff660000
vdec_mmu: iommu       @ff660480



> From: Boris Brezillon <boris.brezillon at collabora.com>
> 
> RK3399 has a Video decoder, define the node in the dtsi. We also add
> the missing power-domain in mmu node and enable the block.
> 
> Signed-off-by: Boris Brezillon <boris.brezillon at collabora.com>
> Signed-off-by: Ezequiel Garcia <ezequiel at collabora.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3399.dtsi | 14 +++++++++++++-
>  1 file changed, 13 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> index 33cc21fcf4c1..a07f857df12f 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> @@ -1285,8 +1285,20 @@ vdec_mmu: iommu at ff660480 {
>  		interrupt-names = "vdec_mmu";
>  		clocks = <&cru ACLK_VDU>, <&cru HCLK_VDU>;
>  		clock-names = "aclk", "iface";
> +		power-domains = <&power RK3399_PD_VDU>;
>  		#iommu-cells = <0>;
> -		status = "disabled";
> +	};
> +
> +	vdec: video-codec at ff660000 {
> +		compatible = "rockchip,rk3399-vdec";
> +		reg = <0x0 0xff660000 0x0 0x400>;
> +		interrupts = <GIC_SPI 116 IRQ_TYPE_LEVEL_HIGH 0>;
> +		interrupt-names = "vdpu";
> +		clocks = <&cru ACLK_VDU>, <&cru HCLK_VDU>,
> +			 <&cru SCLK_VDU_CA>, <&cru SCLK_VDU_CORE>;
> +		clock-names = "axi", "ahb", "cabac", "core";
> +		power-domains = <&power RK3399_PD_VDU>;
> +		iommus = <&vdec_mmu>;
>  	};
>  
>  	iep_mmu: iommu at ff670800 {
> -- 
> 2.25.0




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
