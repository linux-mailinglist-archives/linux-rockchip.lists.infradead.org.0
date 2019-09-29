Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 654C5C19A0
	for <lists+linux-rockchip@lfdr.de>; Sun, 29 Sep 2019 23:40:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9jnpxzGI++nZ1qt/HiWiFnXehXL9e2JH/hxsJXChGiI=; b=cAnaKlgiXqj/4v
	K1jarU3wiSmLnV8W29F/8lHHxNqJ4LiWkvnQlqUYkKv7rD9facyNtLN6Lj95RG0LdsSX1kW4AnLbI
	f4LmkhqwSn2zQngpYwtS1jp8BBRKTpVN2W9qg/RCDOgEG1y0yX2ym57f0gvjjlK3tH2gYuB+G2WE4
	nrYVTHAotTxKUNT1p/UvxWEQBkE5jwJ6+DSHA56xElPDOHvOMLPK6OoiSu73YjtFXUoNBndV2KTXV
	h5cDDtvYVZRooT8tvK+YWy1yR7vR0+BOWHR58OrEyzmsmYy9Oewd60P9oheK1/2BAm5PmlLCeJwX3
	RBxgiHPTMcV9et35CkkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEgvG-0007dU-8o; Sun, 29 Sep 2019 21:40:06 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEgvC-0007GY-2h
 for linux-rockchip@lists.infradead.org; Sun, 29 Sep 2019 21:40:03 +0000
Received: from ip5f5a6266.dynamic.kabel-deutschland.de ([95.90.98.102]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iEgv8-0001fh-UF; Sun, 29 Sep 2019 23:39:58 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] dt-bindings: arm: rockchip: fix Theobroma-System board
 bindings
Date: Sun, 29 Sep 2019 23:39:58 +0200
Message-ID: <2067842.OmCvtMiqeS@phil>
In-Reply-To: <20190917083453.25744-1-heiko@sntech.de>
References: <20190917083453.25744-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190929_144002_302096_3A7AE6C8 
X-CRM114-Status: GOOD (  10.06  )
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, christoph.muellner@theobroma-systems.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Dienstag, 17. September 2019, 10:34:53 CEST schrieb Heiko Stuebner:
> The naming convention for the existing Theobroma boards is
> soc-q7module-baseboard, so rk3399-puma-haikou and the in-kernel
> devicetrees also follow that scheme.
> 
> For some reason in the binding a wrong or outdated naming slipped
> in which does not match the used devicetrees and makes the dt-schema
> complain now.
> 
> Fix this by using the names used in the wild by actual boards.
> 
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>

added a Fixes tag and applies as fix for 5.4



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
