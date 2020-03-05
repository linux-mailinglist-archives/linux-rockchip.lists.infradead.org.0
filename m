Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77D9A17B0B6
	for <lists+linux-rockchip@lfdr.de>; Thu,  5 Mar 2020 22:32:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EP3aNNT2B21AYQf1THYEpPdOstos/uWey59nUPqiMtw=; b=rODko1mXOFqY66
	jQ6C9piZCCykRZs2YSdk6K2J6ACnrMFBxPXciMWlO5dA1VLxq/dSk1VWdnZze9QGan/RCNb8yHCCR
	bbcWUBUM1FjhawQE7onPJuugcFVIxMGS6cCdc6iS/Vulkfwui6BXfIJVP9ftPcLbFW+uNSmWHIY5D
	grBIXupvCxPv0WAL88hq87eDiWGYXPCPUeegTA8iy/dFmVlPaxx9ft7a6xvu8DralWOQd/3jEnch1
	1UWaSP/nJqwmvujVwN2Qep9EUe+Gh9oTLNroH2fjIOBNa4xFgaBgyeuUxhAvgMY4H7j26C0B7EjDi
	j87/qds/c3YxO9lmHqWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9y6K-0006vs-QO; Thu, 05 Mar 2020 21:32:16 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9y6A-0006ns-FK; Thu, 05 Mar 2020 21:32:08 +0000
Received: from ip5f5a5d2f.dynamic.kabel-deutschland.de ([95.90.93.47]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1j9y64-00064u-IE; Thu, 05 Mar 2020 22:32:00 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>, robh+dt@kernel.org
Subject: Re: [PATCH 2/3] ARM: dts: rockchip: add missing @0 to memory nodenames
Date: Thu, 05 Mar 2020 22:31:59 +0100
Message-ID: <1784340.9KJLpVao5L@phil>
In-Reply-To: <20200304074051.8742-2-jbx6244@gmail.com>
References: <20200304074051.8742-1-jbx6244@gmail.com>
 <20200304074051.8742-2-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_133206_664946_8D8EAE07 
X-CRM114-Status: GOOD (  12.25  )
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Johan,

Am Mittwoch, 4. M=E4rz 2020, 08:40:50 CET schrieb Johan Jonker:
> A test with the command below gives for example this error:
> =

> arch/arm/boot/dts/rk3288-tinker.dt.yaml: /: memory:
> False schema does not allow
> {'device_type': ['memory'], 'reg': [[0, 0, 0, 2147483648]]}
> =

> The memory nodes all have a reg property that requires '@' in
> the nodename. Fix this error by adding the missing '@0' to
> the involved memory nodenames.
> =

> make ARCH=3Darm dtbs_check
> DT_SCHEMA_FILES=3D~/.local/lib/python3.5/site-packages/dtschema/
> schemas/root-node.yaml

changes to memory nodes you sadly cannot do in such an automated fashion.
If you read the comment in rk3288-veyron.dtsi you'll see that a previous
similar iteration broke all of those machines as their coreboot doesn't
copy with memory@0 and would insert another memory node without @0

In the past iteration the consensus then was that memory without @0
is also ok (as it isn't changeable anyway).

As I don't really want to repeat that, I'd like actual hardware tests
before touching memory nodes.

Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
