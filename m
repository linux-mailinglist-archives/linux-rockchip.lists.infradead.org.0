Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2252F90571
	for <lists+linux-rockchip@lfdr.de>; Fri, 16 Aug 2019 18:08:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ckbg0NC0hCSsJzJRDXJ4lBBy/Hb/IKc17s/w3H5H37Q=; b=qS/DEW8XhdfBvM
	uohc5L5k0jPepvd6+yamnApo2ycQj/kJGcCLOIsgIHQpXFUpjkZaG4N+H66dmV1etowsVJdLzOJ5u
	9Yewc5xW9p4IeXceuaOVmNlHliPtoLj0bKYERItbct4pPKMJ61t9wCDbC/HaIi4W27lMd6HxJ7eh2
	6fX1I2QnDK5NTCztjZTSxWk+ctEls6KjDkMNqErTYWohi49ut6zGriQIuVgjht+K63ZmtD9ZeAX6t
	giIU0p0biY+tbrkj9q5/8x2syzwmYdTxSdRRJu7mACUfk0H/VZ+80x/2akyxlaf0V0dSrLhMCPva3
	M1GTJpZuK04x34vuPjzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyemQ-0005R1-1J; Fri, 16 Aug 2019 16:08:42 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyem6-0005EE-Fe; Fri, 16 Aug 2019 16:08:24 +0000
Received: from [88.128.80.55] (helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hyels-0001Qb-P9; Fri, 16 Aug 2019 18:08:10 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Justin Swartz <justin.swartz@risingedge.co.za>
Subject: Re: [PATCH v2] ARM: dts: add device tree for Mecer Xtreme Mini S6
Date: Fri, 16 Aug 2019 18:07:45 +0200
Message-ID: <1853641.gZJFEyITmz@phil>
In-Reply-To: <20190811230015.28349-1-justin.swartz@risingedge.co.za>
References: <20190811230015.28349-1-justin.swartz@risingedge.co.za>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_090822_792917_84DED2F2 
X-CRM114-Status: UNSURE (   9.03  )
X-CRM114-Notice: Please train this message.
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Montag, 12. August 2019, 01:00:13 CEST schrieb Justin Swartz:
> The Mecer Xtreme Mini S6 features a Rockchip RK3229 SoC,
> 1GB DDR3 RAM, 8GB eMMC, MicroSD port, 10/100Mbps Ethernet,
> Realtek 8723BS WLAN module, 2 x USB 2.0 ports, HDMI output,
> and S/PDIF output.
> 
> Signed-off-by: Justin Swartz <justin.swartz@risingedge.co.za>

applied for 5.4

Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
