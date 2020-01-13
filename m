Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCB5C138D7F
	for <lists+linux-rockchip@lfdr.de>; Mon, 13 Jan 2020 10:16:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PBXHg/IcrO4RM9H6KE3nTxlX/VRS0RU5TEmHC/oN9CI=; b=mMg46Jd2tm0upk
	A0zbaPIW6ngM6QNluFekeI8CNmtq2nAY0HX3WEiGhb+ORiMPj7JLbFBHBOvxKyv1gndy8pJ5T8ce4
	yXPKWkkJiB6aIO+lw3Xxh2V52S0yFxSHxbEmktDtdzSBo/ZYKLVaesJzN/WCMLwOkvaMrq8SrcdRM
	ESCEyUQ7bR/Gc6IBbSRz680S9wy5+KCOMzNX7pCkADTMh8LQ69MWiALU1sQXizFmx7r/TTBmnGDyY
	9jnneQij+RnghgObHIbLdmx39zAviaiPux7Sy0F+RSTF+l2nuf49VXRGDvdmc3ZDdKtZONjFPolI2
	YN0NrtDacI8zLUV6lB4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqvpj-0001gV-NI; Mon, 13 Jan 2020 09:16:27 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqvpL-0001R8-EY; Mon, 13 Jan 2020 09:16:05 +0000
Received: from wf0253.dip.tu-dresden.de ([141.76.180.253] helo=phil.localnet)
 by gloria.sntech.de with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <heiko@sntech.de>)
 id 1iqvpF-0001xO-Fh; Mon, 13 Jan 2020 10:15:57 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: fix dwmmc clock name for px30 and
 rk3308
Date: Mon, 13 Jan 2020 10:15:56 +0100
Message-ID: <3203839.F8si9oFvou@phil>
In-Reply-To: <20200110161200.22755-1-jbx6244@gmail.com>
References: <20200110161200.22755-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_011603_638023_4DB3AC46 
X-CRM114-Status: GOOD (  10.79  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Johan,

Am Freitag, 10. Januar 2020, 17:12:00 CET schrieb Johan Jonker:
> An experimental test with the command below gives this error:
> px30-evb.dt.yaml: dwmmc@ff390000: clock-names:2:
> 'ciu-drive' was expected
> rk3308-evb.dt.yaml: dwmmc@ff480000: clock-names:2:
> 'ciu-drive' was expected
> 
> 'ciu-drv' is not a valid dwmmc clock name,
> so fix this by changing it to 'ciu-drive'.
> 
> make ARCH=arm64 dtbs_check
> DT_SCHEMA_FILES=Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>

thanks for this fix, I've split it into two patches (px30 and rk3308) and
applied for 5.6

Thanks
Heiko




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
