Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BAF2A1A8541
	for <lists+linux-rockchip@lfdr.de>; Tue, 14 Apr 2020 18:40:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UBfvW27gmvQxQyEh7XoKB/S2olmd9Dmb0XABK6DKVa8=; b=Z0i0TG+PJ2hmDo
	wdYFG/IKt1EvVvVR9cvDf9HJbZONasEJW1VZfZg9InO2oRtkuUTuxICP7YUEZGW9pbquvPgDl02OT
	dLhH2YYtVTNE2ZzG/aZr0n+6+cLn9TasCCYRmX/BTVu8RRUBlSwZE3ndTmAyHJyk3MXmaIEwnaPnR
	yswVNpONoqGx/IdaHfEnMd/tlDTneEG/dq2rSwn9jKukOQxSjaCSBXj4ZL+k67eflNHiRg2YxzMQC
	oDFpPPnyIfMy2cV0HHvopj8Igat7vvSWBrJZ5tQSNH0p1u9/arNaQsgrv+UxdOulFwH3BxgSga9pU
	Yqgc68CSkh3mb0tGXRow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOObe-0001zs-60; Tue, 14 Apr 2020 16:40:14 +0000
Received: from mail.manjaro.org ([176.9.38.148])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOObZ-0008PP-FU
 for linux-rockchip@lists.infradead.org; Tue, 14 Apr 2020 16:40:11 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.manjaro.org (Postfix) with ESMTP id 6926A3742B3D;
 Tue, 14 Apr 2020 18:40:03 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at manjaro.org
Received: from mail.manjaro.org ([127.0.0.1])
 by localhost (manjaro.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LtX2ZRwLkphG; Tue, 14 Apr 2020 18:40:00 +0200 (CEST)
From: Tobias Schramm <t.schramm@manjaro.org>
To: Rob Herring <robh+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH 0/2] Fix some GPIO setup on Pinebook Pro
Date: Tue, 14 Apr 2020 18:39:50 +0200
Message-Id: <20200414163952.1093784-1-t.schramm@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_094009_667175_A9F3C158 
X-CRM114-Status: UNSURE (   5.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [176.9.38.148 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Tobias Schramm <t.schramm@manjaro.org>, linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

This patchset contains two small fixes for the dts of the Pinebook Pro.
The first fixes inverted logic on the headphone detect GPIO.
The second patch fixes unreliable DC charger detection.

Tobias Schramm (2):
  arm64: dts: rockchip: fix inverted headphone detection
  arm64: dts: rockchip: enable DC charger detection pullup

 arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

-- 
2.26.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
