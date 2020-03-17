Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 485CB1876CE
	for <lists+linux-rockchip@lfdr.de>; Tue, 17 Mar 2020 01:27:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=svUOEblKbppM2o6hf0lKQhurokz9eUSL8qU/gMCp5PY=; b=jwykLV4sFqkQkB
	LzB6hm0zfIqgRKZiDCGpxBiMag3Dkm7lYUbNkRRK+TdTMVl8W9QGimYu8yNnlK3/SURNDv93Gt8/B
	7ld9L0bLB46Hvz3NTyClqD53gKxT2hQo3CQKFGlY1Iga4Y9LZhVer6nn7uAQKE2KzunUgsYiaMQH3
	TrRSsgBY4VJi2FrlWyTzCHfxPBtLRbA/J2gsUMSKnxwMe1WgjWjIId5Oog42bCh2sScAWrE0IaxUp
	h2G1vSw4zG+OCb2yFsJw71sJ92gUMQmPBw6o2iVGJRpgOsE8Rgz8bZgvpbjLM2YZOqq2IugjyOJpV
	FEvQsGuVo6QELMMg3B3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jE04W-0007BC-7L; Tue, 17 Mar 2020 00:27:04 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jE04L-00072E-Ng; Tue, 17 Mar 2020 00:26:55 +0000
Received: from ip5f5a5d2f.dynamic.kabel-deutschland.de ([95.90.93.47]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1jE04K-0004Ns-3D; Tue, 17 Mar 2020 01:26:52 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH] ARM: dts: rockchip: fix vref-supply for &saradc node
 rk3288 firefly reload
Date: Tue, 17 Mar 2020 01:26:51 +0100
Message-ID: <2367208.yvSAVzBJkc@phil>
In-Reply-To: <20200314140755.4877-1-jbx6244@gmail.com>
References: <20200314140755.4877-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_172653_914384_56B784E9 
X-CRM114-Status: GOOD (  10.57  )
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

Am Samstag, 14. M=E4rz 2020, 15:07:55 CET schrieb Johan Jonker:
> A test with the command below gives this error:
> =

> arch/arm/boot/dts/rk3288-firefly-reload.dt.yaml: saradc@ff100000:
> 'vref-supply' is a required property
> =

> PMIC Channel OUT11 with powername 'vcc_18'
> (connected through R155 bridge with 'vccio_wl')
> is used for the recovery key and ADC_AVDD_1V8.
> =

> Fix error by adding 'vcc_18' as vref for the saradc.
> =

> make ARCH=3Darm dtbs_check
> DT_SCHEMA_FILES=3DDocumentation/devicetree/bindings/iio/adc/
> rockchip-saradc.yaml
> =

> Signed-off-by: Johan Jonker <jbx6244@gmail.com>

applied for 5.7

Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
