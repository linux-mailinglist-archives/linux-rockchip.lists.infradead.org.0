Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5333F1D8B48
	for <lists+linux-rockchip@lfdr.de>; Tue, 19 May 2020 00:53:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SJm+Op0Zw/+OVJtfcl1zcIghv2ihjVZcPyy8JCQQUIU=; b=eiyhaM7ZCReb7J
	+fS/CckitY97JeG3146YtYc5XIS5UjsO/1sWNJic6meL7Wy9H+Ik7Sr7eRKuoVZQp71Ypp8abzNzi
	4ncwP7jnx6k73JqTIjiQPGNbMxjmBehloap7UmyIR1Wh/ztrA/M+g10fTqKA4E2BwpddDWNUzdVNk
	C4WdjCh9eGzDEuURz8bP4G9wf/Dd2PV+oI+tezWr+cs+MkEKH1My2J+/cf8s9UD4i2xXEvU5y8bmm
	ERJq+GSXs1ua3lQq/rIRc6l7tOvXjGWURPGu9porY5/3JdKPjvKaPR6qAdxc3UPA9YDwtlQLRHiI3
	ZU+9IGsVjNsv67WLG/rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaod1-0001IR-9H; Mon, 18 May 2020 22:52:59 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaocq-0001A2-IR; Mon, 18 May 2020 22:52:49 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1jaock-0000GM-7J; Tue, 19 May 2020 00:52:42 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Mark Rutland <mark.rutland@arm.com>,
 Justin Swartz <justin.swartz@risingedge.co.za>,
 Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH v5 0/1] Add rga to rk322x device tree
Date: Tue, 19 May 2020 00:52:40 +0200
Message-Id: <158984232928.2265632.16859446100127654389.b4-ty@sntech.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200419125134.29923-1-justin.swartz@risingedge.co.za>
References: <558b35c3-7f75-8d0d-048b-c55c06fa8a53@gmail.com>
 <20200419125134.29923-1-justin.swartz@risingedge.co.za>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_155248_609663_4FDC2E8F 
X-CRM114-Status: GOOD (  10.72  )
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
Cc: devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Heiko Stuebner <heiko@sntech.de>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Sun, 19 Apr 2020 12:51:32 +0000, Justin Swartz wrote:
> This patchset aims to enable use of Rockchip's RGA, a 2D raster
> graphic acceleration unit, on rk322x based devices.
> 
> Changes in v5:
>   - Remove the patch to rockchip-rga device tree binding documentation
>     as Johan Jonker has already included mention of "rockchip,rk3228-rga"
>     since the conversion to YAML.
> 
> [...]

Applied, thanks!

[1/1] ARM: dts: rockchip: add rga node for rk322x
      commit: 54b1a4e070330c3fba5becfb0b619bf360bc2657

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
