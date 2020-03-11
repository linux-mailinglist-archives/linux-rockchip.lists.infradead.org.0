Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC5441814E1
	for <lists+linux-rockchip@lfdr.de>; Wed, 11 Mar 2020 10:33:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rLVlmXHw8GzuaVrPVf9XSRN5GaZKIwS6bfFfdPvN4e4=; b=KQvoi0xos0Y0Lh
	KOVVb0pNWZqRdoibr2kx522QsXNvIOp0hfY7lh2MYCVhiXj1pokkwVnCAjnXoPwYOLjt2rVgHRY/w
	D+rlwFeKfZc7DfLWXnWidONEgUTZeUUgs5PK0FDuC8ZZmVmeBbxXsAAhwXVuUHXKhpVPjFt0qgvSl
	cXiO3gF2GBueIazFWK8R64aJ/6sQflEzdWnSUCB909okiIBQhECFsBsWWSInFl6g4F6VuQtm3OvLl
	06bQCQe6pV5FeDNk3wUKBH8zsLiKPK4y46mO4KjfGJqWk+EktTlH9emSFVYCwznLSRi6TYFwDHffF
	eezA2pGO9kkXD/XeTQLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBxjd-0002CC-Tg; Wed, 11 Mar 2020 09:33:05 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBxjR-00023v-1u; Wed, 11 Mar 2020 09:32:54 +0000
Received: from p5b127c69.dip0.t-ipconnect.de ([91.18.124.105]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1jBxjP-0000hs-6C; Wed, 11 Mar 2020 10:32:51 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH 1/2] ARM: dts: add bus to rockchip amba nodenames
Date: Wed, 11 Mar 2020 10:32:50 +0100
Message-ID: <1741084.mhMtVdeNFd@phil>
In-Reply-To: <20200302153047.17101-1-jbx6244@gmail.com>
References: <20200302153047.17101-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_023253_245793_600B63A7 
X-CRM114-Status: GOOD (  11.27  )
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

Am Montag, 2. M=E4rz 2020, 16:30:46 CET schrieb Johan Jonker:
> A test with the command below gives for example this error:
> =

> arch/arm/boot/dts/rk3188-bqedison2qc.dt.yaml: amba: $nodename:0:
> 'amba' does not match '^(bus|soc|axi|ahb|apb)(@[0-9a-f]+)?$'
> =

> AMBA is a open standard for the connection and
> management of functional blocks in a SoC.
> It's compatible with 'simple-bus', so fix this error
> by adding 'bus' to all Rockchip 'amba' nodes.
> =

> make ARCH=3Darm dtbs_check
> DT_SCHEMA_FILES=3D~/.local/lib/python3.5/site-packages/dtschema/
> schemas/simple-bus.yaml
> =

> Signed-off-by: Johan Jonker <jbx6244@gmail.com>

applied both for 5.7

Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
