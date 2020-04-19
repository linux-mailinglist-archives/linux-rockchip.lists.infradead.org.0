Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 925431AF993
	for <lists+linux-rockchip@lfdr.de>; Sun, 19 Apr 2020 13:37:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4V2PqZIGxFdAJPr/glEjXs9ns3yFckFQSbcjrSHccwE=; b=PU+wWm2i9I0elT
	Rho7spIAxGnnODdXHNbbQintj1agaSXvYlSS8WUO4AcvsESEXC/grNb/T/rLne9leyMFq7nrEztqF
	jzAtwPdmom7j4u2sDVqRkfw27by80At7iGXI4ZFNvg7VfpK7cdTIYLnW1hX9Fwh+ModOLIJKeSRml
	GuH/EyLbc8y9O5RlZmWPKl/Xh5rsJiRczgJJojzgxQ7mvqv2F14Fx+2AvqPaGeFhn8+pkLifKNKi7
	kUacU9QY5tdcZLQp9zK1i2z75cf9byQ/xfwNRr266CufGD4vv3c7+gQxshdIYex2Xb6P5X5EyBINg
	9qpvJfIb6RET4jl/R78g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQ8Fs-000693-M7; Sun, 19 Apr 2020 11:36:56 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQ8Fp-00068U-3A; Sun, 19 Apr 2020 11:36:54 +0000
Received: from p508fcedd.dip0.t-ipconnect.de ([80.143.206.221]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1jQ8Fh-0006Sg-Fa; Sun, 19 Apr 2020 13:36:45 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Chen-Yu Tsai <wens@kernel.org>
Subject: Re: [PATCH 0/6] arm64: dts: rockchip: misc. cleanups
Date: Sun, 19 Apr 2020 13:36:44 +0200
Message-ID: <75587978.rJgf9MR2fZ@phil>
In-Reply-To: <20200327030414.5903-1-wens@kernel.org>
References: <20200327030414.5903-1-wens@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200419_043653_134316_3842A32A 
X-CRM114-Status: UNSURE (   8.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: linux-rockchip@lists.infradead.org, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi,

Am Freitag, 27. M=E4rz 2020, 04:04:08 CEST schrieb Chen-Yu Tsai:
> Chen-Yu Tsai (6):
>   arm64: dts: rockchip: rk3399-roc-pc: Fix MMC numbering for LED
>     triggers
>   arm64: dts: rockchip: rk3328: Replace RK805 PMIC node name with "pmic"
>   arm64: dts: rockchip: rk3328: drop non-existent gmac2phy pinmux
>     options
>   arm64: dts: rockchip: rk3328: drop #address-cells, #size-cells from
>     grf node
>   arm64: dts: rockchip: rk3399: drop #address-cells, #size-cells from
>     pmugrf node
>   arm64: dts: rockchip: rk3399: Rename dwc3 device nodes to make dtc
>     happy

I've applied patches 2-6 as fix for 5.7.
The discussion on patch1 somehow stopped on monday, so feel
free to resubmit that one separately once everybody is happy

Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
