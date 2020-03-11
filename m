Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7272918143C
	for <lists+linux-rockchip@lfdr.de>; Wed, 11 Mar 2020 10:12:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GwXifMilCC4oFFr1yfP2vlluaZMmDu3dLIFx3O0lKf4=; b=G4NJ38RPOl3Lkf
	aXj/7cqWw4bPMMflfIi9AFSz++V4V0TUk1kAaZ4ruvosTdK5VDbu7hTVtwUf3i0YZ8i2NHePvyC9K
	x/3b0V3nWk6+IlD/CE6k/VEteh3tMqlD3GZtSOtt2ly0BB1D6PbBHiRB+oATr1kphaRAz1AXbPqPu
	rKSdDcqNOxpt6IAYsAvUEoKz6JKvdi3rIgQd9a8YlslnkdwMbB+UDc+znpeslcK4Nb02Mi1e1XLrT
	7WiUPrZ0Tb7scITc/1EFLQ7GGVO3QndCG4H7cRywUrhYwjEdGWpERGcMvnLqOGCrw+66pT4SLY1K0
	pV7H/tYbETDhTPamj2og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBxPG-0000Ip-S5; Wed, 11 Mar 2020 09:12:02 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBxP1-00007Z-I5; Wed, 11 Mar 2020 09:11:48 +0000
Received: from p5b127c69.dip0.t-ipconnect.de ([91.18.124.105]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1jBxOz-0000b0-QO; Wed, 11 Mar 2020 10:11:45 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: remove rockchip,
 grf from vop nodes for px30
Date: Wed, 11 Mar 2020 10:11:45 +0100
Message-ID: <3610438.YMqP0VFAyP@phil>
In-Reply-To: <20200309081600.3887-1-jbx6244@gmail.com>
References: <20200309081600.3887-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_021147_750819_2E49D3DD 
X-CRM114-Status: GOOD (  11.09  )
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

Am Montag, 9. M=E4rz 2020, 09:16:00 CET schrieb Johan Jonker:
> An experimental test with the command below without
> additional properties in 'rockchip-vop.yaml' gives this error:
> =

> arch/arm64/boot/dts/rockchip/px30-evb.dt.yaml: vop@ff470000:
> 'power-domains', 'rockchip,grf'
> do not match any of the regexes: 'pinctrl-[0-9]+'
> arch/arm64/boot/dts/rockchip/px30-evb.dt.yaml: vop@ff460000:
> 'power-domains', 'rockchip,grf'
> do not match any of the regexes: 'pinctrl-[0-9]+'
> =

> 'rockchip,grf' is not used by the Rockchip VOP driver,
> so remove it from 'vop' nodes in 'px30.dtsi'.
> =

> make ARCH=3Darm64 dtbs_check
> DT_SCHEMA_FILES=3DDocumentation/devicetree/bindings/display/
> rockchip/rockchip-vop.yaml
> =

> Signed-off-by: Johan Jonker <jbx6244@gmail.com>

applied for 5.7

Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
