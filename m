Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A2FA1876C0
	for <lists+linux-rockchip@lfdr.de>; Tue, 17 Mar 2020 01:25:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+MHawYI1DrbSadv2eADMuEM0jYf4csi5iU+1ROvzNi8=; b=JFEyILh6WtkvXU
	xCJGqReyXO4yWuNRncQQK9F/2Du0Jm8GvrGQTLBXiIHpt5fzqGhLJsKVSdXQHWwR73mZjvjJ44GeJ
	y2DY602XRoNSRAMZKWq9g3teMm4XzhZW8Th5wG9GHrzBueXgUg2acZ1jWXWq9wxrtefXryOIcG7gZ
	wAdpfBvh+Ms2R7jY+lHpruP/TapUqXLDIghSAHXgM79wLQDNQJxdGPJ7aHAYWXdzw0Wvo899JntnX
	pZI/LOPHEnaP/yRSax2xOQJxW3FclpUH/IrtO7QhTBmt1qhzTYJxa97evsyFGHTXAmg8GmTANjBHV
	Lg8s0GjjVwxSrA2BNBhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jE03C-0006CT-Qx; Tue, 17 Mar 2020 00:25:42 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jE032-00064w-1A; Tue, 17 Mar 2020 00:25:34 +0000
Received: from ip5f5a5d2f.dynamic.kabel-deutschland.de ([95.90.93.47]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1jE02x-0004MY-3N; Tue, 17 Mar 2020 01:25:27 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH] ARM: dts: rockchip: fix lvds-encoder ports subnode for
 rk3188-bqedison2qc
Date: Tue, 17 Mar 2020 01:25:26 +0100
Message-ID: <6365496.CELQRQS0Ut@phil>
In-Reply-To: <20200316174647.5598-1-jbx6244@gmail.com>
References: <20200316174647.5598-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_172532_223876_74205E34 
X-CRM114-Status: GOOD (  10.15  )
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

Am Montag, 16. M=E4rz 2020, 18:46:47 CET schrieb Johan Jonker:
> A test with the command below gives this error:
> =

> arch/arm/boot/dts/rk3188-bqedison2qc.dt.yaml: lvds-encoder:
> 'ports' is a required property
> =

> Fix error by adding a ports wrapper for port@0 and port@1
> inside the 'lvds-encoder' node for rk3188-bqedison2qc.
> =

> make ARCH=3Darm dtbs_check
> DT_SCHEMA_FILES=3DDocumentation/devicetree/bindings/display/
> bridge/lvds-codec.yaml
> =

> Signed-off-by: Johan Jonker <jbx6244@gmail.com>

applied for 5.7

Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
