Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BF3A1876F2
	for <lists+linux-rockchip@lfdr.de>; Tue, 17 Mar 2020 01:30:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fSw39nzLxwbMhlOb5Fzf5NXLGAOJud7SVlMOzvlRng0=; b=QR64H531AVpMUw
	e7ryOOmp3/T247w8PVYk3/2AKkem2pEg3qF5jRqrYzB25qfHf4Q+DiSksHLvy3JQNjI8CigV2FGea
	+cjMImjemyk+6yCc+rtDN1d12xfN17Wsn05fU+h9wiPhdsBocsvMN5ITZdp4jVcX6Yu/J01Gul1qD
	gMPH65vTDmQOvGUs8ds7OVCVsnq4ORiYvWuah5TP/CNDqd1oOA1LHA+BPhFdMSS1IXjnj5nYAaTHT
	WXHKMylstyuSpFG+uFFRIHR7vsMlsCr1LSlopRtObSilIhNNXm9mEtRNOebMd+n0gB1OTTzUIUgrm
	XZ9iepNNnF+9bGOIXd5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jE08E-0002rN-4v; Tue, 17 Mar 2020 00:30:54 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jE07z-0002fH-AG; Tue, 17 Mar 2020 00:30:40 +0000
Received: from ip5f5a5d2f.dynamic.kabel-deutschland.de ([95.90.93.47]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1jE07x-0004Qg-Lf; Tue, 17 Mar 2020 01:30:37 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH 2/2] ARM: dts: rockchip: remove #address-cells and
 #size-cells from i2s nodes
Date: Tue, 17 Mar 2020 01:30:36 +0100
Message-ID: <17804728.xSKf3K9Wuf@phil>
In-Reply-To: <20200311162524.19748-2-jbx6244@gmail.com>
References: <20200311162524.19748-1-jbx6244@gmail.com>
 <20200311162524.19748-2-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_173039_499921_78B371FB 
X-CRM114-Status: UNSURE (   9.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Mittwoch, 11. M=E4rz 2020, 17:25:24 CET schrieb Johan Jonker:
> An experimental test with the command below gives
> for example this error:
> =

> arch/arm/boot/dts/rk3036-evb.dt.yaml: i2s@10220000:
> '#address-cells', '#size-cells'
> do not match any of the regexes: 'pinctrl-[0-9]+'
> =

> '#address-cells' and '#size-cells' are not a valid property
> for i2s nodes, so remove them.
> =

> make ARCH=3Darm dtbs_check
> DT_SCHEMA_FILES=3DDocumentation/devicetree/bindings/sound/rockchip-i2s.ya=
ml
> =

> Signed-off-by: Johan Jonker <jbx6244@gmail.com>

applied for 5.7

Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
