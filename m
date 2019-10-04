Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 840E0CC3C6
	for <lists+linux-rockchip@lfdr.de>; Fri,  4 Oct 2019 21:53:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HFDRkYWRqzfTiPsG5KAIq/Dv4dM7Pss4GRb1fF5p4CU=; b=SDVQyZfpmYaSXG
	TcurZqAXG5YLWqgFlifXIAcbpvVVbXsFjLljbcT458G/b9eRUI2Q4BGRtte7h/86aAmM5M7cG6jnt
	MQTRiqELBPaVRoH+41c57A1lkBbMRn/TE6afFcz22DtMEqI5InF9ZBDhrkkbUTSqCNL4jtOORw11h
	+pPqpqxcurtQIwkgNmk/OpqR0klmfWqAf3d7ebVookpFGXs52H9MMLvOimiyziwpAtUOLLThjKsJ3
	TBIB8evFEb6en9jC2IGwsySeZ6cDZ9czqVAN+1SLdcyon3QTyAxvVKPnc3OP1RK+LATBH6EVuVh8h
	eLnHPBBuGlxrgh1rSCOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGTdM-0003sw-FW; Fri, 04 Oct 2019 19:53:00 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGTdA-0003mK-Tk; Fri, 04 Oct 2019 19:52:52 +0000
Received: from 94.112.246.102.static.b2b.upcbusiness.cz ([94.112.246.102]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iGTd3-0006SE-1o; Fri, 04 Oct 2019 21:52:41 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: add missing #msi-cells to rk3399
Date: Fri, 04 Oct 2019 21:52:40 +0200
Message-ID: <3758829.B9nFNygdid@phil>
In-Reply-To: <20190917083625.25818-1-heiko@sntech.de>
References: <20190917083625.25818-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_125249_112088_D106CB2F 
X-CRM114-Status: UNSURE (   8.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Dienstag, 17. September 2019, 10:36:25 CEST schrieb Heiko Stuebner:
> The rk3399 gic-its was missing the #msi-cells property as found by
> dt-schema checks, so add it.
> 
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>

applied for 5.5



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
