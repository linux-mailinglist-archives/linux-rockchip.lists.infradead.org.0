Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C6F6174A3C
	for <lists+linux-rockchip@lfdr.de>; Sun,  1 Mar 2020 00:47:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u77sOEKdE18f1mXeCr/fslxzeDFS3Ed+MbTnuyME/6k=; b=JXac6t3Sthi0r8
	vVX48v6M0VySzFlBDuMjc5u3tc65m9aWvr2ov7mynO7uIURZ5/pdKAzOZ4QmPIy/c2b60E4kTWDFx
	R13A8dHWoaAbgAHh8cwwV/cXoBDKHJsFBzXrhm+CRN6ke7WSVCWWeWCkuAXvMAf6AcsB8qXldOxp5
	2uiAuMOZ43T4JPpEUUfEitOZ+9FmV0OhQ0tarW9P4R9ztLEBjUi8yv4E/uQhA0W5XiIDbRd18Ibcz
	ODgQP+t6+Xace/Opl4PdATI6xD/SK84xc6ozpYjS3DWMkMuoYpH32s/I3nRM+hkyqz6pRb/7gjnMw
	7VdvBnu1s7tpPCY8pYag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8BpJ-0007Vv-Uw; Sat, 29 Feb 2020 23:47:21 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8Bp7-0007Lq-Tj; Sat, 29 Feb 2020 23:47:11 +0000
Received: from p508fcd9d.dip0.t-ipconnect.de ([80.143.205.157]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1j8Bp6-0004qM-8P; Sun, 01 Mar 2020 00:47:08 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH 1/2] ARM: dts: remove g-use-dma from rockchip usb nodes
Date: Sun, 01 Mar 2020 00:47:07 +0100
Message-ID: <8908074.NjHMO83URx@phil>
In-Reply-To: <20200228113922.20266-1-jbx6244@gmail.com>
References: <20200228113922.20266-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200229_154710_110480_F3899175 
X-CRM114-Status: GOOD (  12.04  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Freitag, 28. Februar 2020, 12:39:21 CET schrieb Johan Jonker:
> A test with the command below gives these errors:
> 
> arch/arm/boot/dts/rv1108-elgin-r1.dt.yaml: usb@30180000:
> 'g-use-dma' does not match any of the regexes: 'pinctrl-[0-9]+'
> arch/arm/boot/dts/rv1108-evb.dt.yaml: usb@30180000:
> 'g-use-dma' does not match any of the regexes: 'pinctrl-[0-9]+'
> arch/arm/boot/dts/rk3228-evb.dt.yaml: usb@30040000:
> 'g-use-dma' does not match any of the regexes: 'pinctrl-[0-9]+'
> arch/arm/boot/dts/rk3229-evb.dt.yaml: usb@30040000:
> 'g-use-dma' does not match any of the regexes: 'pinctrl-[0-9]+'
> arch/arm/boot/dts/rk3229-xms6.dt.yaml: usb@30040000:
> 'g-use-dma' does not match any of the regexes: 'pinctrl-[0-9]+'
> 
> 'g-use-dma' is not a valid option in dwc2.yaml, so remove it
> from all Rockchip dtsi files.
> 
> make ARCH=arm dtbs_check
> DT_SCHEMA_FILES=Documentation/devicetree/bindings/usb/dwc2.yaml
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>

applied both patches for 5.7

Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
