Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A2C8181424
	for <lists+linux-rockchip@lfdr.de>; Wed, 11 Mar 2020 10:09:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WXRdP81NAeytP6uqJ9P6dIPNBG08F7Mcm1N2+FcETLQ=; b=mkZxvI0YJeUDAA
	CnPBsctgxNvrcQyJW9ktmxRFHWRDfwCl44EjTBESlPQe5tjEx4XBG41tHt4zEFGUxLoACaATY1zaD
	6ib6sK6ocVrG0fntQqa/HvbDeAyckpIUXe1hfviGRQ0QnQy1PUPh3HbStT04rGUNRbUptSoTLHji3
	bZlnDoEns5Sj4NcnpOWKNJcmegZ7ivob0DSlOddjd+FfmSXKSEOfTuZV09fmeAOaFqA1E2lP45FZV
	MH6ssmZNC1BzStVakDSrVnplIOyfuMdPlX/b8P5ScXjhZDk19AavYx2fPV4lFS7Pyk3jw0KyBZA2V
	tYrl5cJjeja8S2H14hZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBxN1-000617-MI; Wed, 11 Mar 2020 09:09:43 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBxMj-0005ps-8X; Wed, 11 Mar 2020 09:09:27 +0000
Received: from p5b127c69.dip0.t-ipconnect.de ([91.18.124.105]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1jBxMh-0000ZV-Gq; Wed, 11 Mar 2020 10:09:23 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: remove max-freq from &spi1 node for
 Hugsun X99
Date: Wed, 11 Mar 2020 10:09:22 +0100
Message-ID: <2830849.oEQS0yQEAA@phil>
In-Reply-To: <20200309125145.14455-1-jbx6244@gmail.com>
References: <20200309125145.14455-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_020925_451648_BAB2505B 
X-CRM114-Status: GOOD (  12.52  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Montag, 9. M=E4rz 2020, 13:51:45 CET schrieb Johan Jonker:
> A test with the command below does not detect all errors
> in combination with 'additionalProperties: false' and
> allOf:
>   - $ref: "spi-controller.yaml#"
> =

> 'additionalProperties' applies to all properties that are not
> accounted-for by 'properties' or 'patternProperties' in
> the immediate schema.
> =

> First when we combine spi-rockchip.yaml and
> spi-controller.yaml it gives this error:
> =

> arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dt.yaml: spi@ff1d0000:
> 'max-freq' does not match any of the regexes:
> '^.*@[0-9a-f]+$', '^slave$'
> =

> 'max-freq' is not a valid property name for spi nodes,
> so remove it.
> =

> make ARCH=3Darm64 dtbs_check
> DT_SCHEMA_FILES=3DDocumentation/devicetree/bindings/spi/spi-rockchip.yaml
> =

> Signed-off-by: Johan Jonker <jbx6244@gmail.com>

applied for 5.7

Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
