Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C31A1876C4
	for <lists+linux-rockchip@lfdr.de>; Tue, 17 Mar 2020 01:26:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dUI6FYkGFoZG42pRq3QZMetItVJ9yFnbStenFBLjZLQ=; b=vA287oBc9MUJQc
	zis6vrCkrpqdH8LoVKHlkUWwQapDMYS/gdzByK4VdfJJQc3/3H7x4nqR+0/oSngyxzqhllm4bftJr
	6gA2/k/U00bV3WO+1QIlnQh8Nw/+UhhnklKALHsw5wmhYLuUaSJXgg92ghfZ2hutLahxfi3vZTObW
	D/JPfB9XCPGUiW2AVJZ93gZh0nNa5ZdtXOwNoK1Z4f686krMdMw1F6zM3hlzzA5/z6o8+YFncWUpO
	FHxkvrJoVC8lCQJWHafaWiUy/SDo6Gzmci6f2rAFX5+ZknsZfZPCkNOcBYz9CRuZUnZC+h9+ZZgwm
	S52gOqQ5IdNDBVGdIhvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jE03U-0006Ub-Fu; Tue, 17 Mar 2020 00:26:00 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jE03H-0006Hv-De; Tue, 17 Mar 2020 00:25:48 +0000
Received: from ip5f5a5d2f.dynamic.kabel-deutschland.de ([95.90.93.47]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1jE03F-0004Mk-L2; Tue, 17 Mar 2020 01:25:45 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH] ARM: dts: rockchip: rk3xxx: fix L2 cache-controller
 nodename
Date: Tue, 17 Mar 2020 01:25:44 +0100
Message-ID: <8086122.1zHSQDRuSt@phil>
In-Reply-To: <20200316165453.3022-1-jbx6244@gmail.com>
References: <20200316165453.3022-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_172547_626303_71D18036 
X-CRM114-Status: UNSURE (   9.31  )
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

Am Montag, 16. M=E4rz 2020, 17:54:53 CET schrieb Johan Jonker:
> A test with the command below gives for example this error:
> =

> arch/arm/boot/dts/rk3066a-bqcurie2.dt.yaml:
> l2-cache-controller@10138000: $nodename:0:
> 'l2-cache-controller@10138000'
> does not match '^(cache-controller|cpu)(@[0-9a-f,]+)*$'
> =

> Fix error by changing nodename to 'cache-controller'.
> =

> make ARCH=3Darm dtbs_check
> DT_SCHEMA_FILES=3DDocumentation/devicetree/bindings/arm/l2c2x0.yaml
> =

> Signed-off-by: Johan Jonker <jbx6244@gmail.com>

applied for 5.7

Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
