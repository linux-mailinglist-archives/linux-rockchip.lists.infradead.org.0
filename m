Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 650321353C3
	for <lists+linux-rockchip@lfdr.de>; Thu,  9 Jan 2020 08:35:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=drmiLxc0eYnmpyramVFORoyzBj19EHIcbUTUNBoWSA8=; b=p77BxO0UQc2Ed3
	h0pHnLszRGkmESeRo7hIMizVZx9v+tVh4BtFG9CLggpUv9ox4doLiUP0XZtxeD2wUhi7dTbTs/VU9
	0YduPsCBKdDhV9NrmiArwLtTbreOkJylrUp2a/G71yf4i+4pnZ3PEb9W8tyhvqsEM0LVkCvHW2MK4
	ttTU4JNN9PSyeAeLwpxYq1t0oJ/GcgC/u0lUkZPgTEvV9lBRkDFomOQT6a/C2aycaQZkS8v/Tz4F+
	OFFHY0pKKsfXbhKJvVfmWZxhB7/AEPaVZ9q/W8e+S5PJJ+41jKwW+/HQI5H10ueOXuewBKkXSN1gR
	x0TaXdXmwodhijDZTOTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipSLa-0000Cl-Qi; Thu, 09 Jan 2020 07:35:14 +0000
Received: from mail.manjaro.org ([176.9.38.148] helo=manjaro.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipSLE-0008Ut-PZ; Thu, 09 Jan 2020 07:34:54 +0000
Received: from localhost (localhost [127.0.0.1])
 by manjaro.org (Postfix) with ESMTP id 4FE1936E4161;
 Thu,  9 Jan 2020 08:34:51 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at manjaro.org
Received: from manjaro.org ([127.0.0.1])
 by localhost (manjaro.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id r6a5lqKyRSmw; Thu,  9 Jan 2020 08:34:49 +0100 (CET)
From: Tobias Schramm <t.schramm@manjaro.org>
To: Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>
Subject: [PATCH v2 0/1] Regression in rockchipdrm
Date: Thu,  9 Jan 2020 08:31:28 +0100
Message-Id: <20200109073129.378507-1-t.schramm@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_233452_972907_98499F6F 
X-CRM114-Status: UNSURE (   5.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [176.9.38.148 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: linux-rockchip@lists.infradead.org, Tobias Schramm <t.schramm@manjaro.org>,
 linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

commit 2589c4025f13 ("drm/rockchip: Avoid drm_dp_link helpers") changed
the datatype used for storing the display port data rate to u8.
A u8 is not sufficient to store the data rate, resulting in a crash due
to incorrect calculations.

This series resolves the issue by restoring the data type changed in
commit 2589c4025f13 to their original type.

Thanks to CrystalGamma for identifying the commit causing the regression.

v2: Keep lane count as u8

Tobias Schramm (1):
  drm/rockchip: fix integer type used for storing dp data rate

 drivers/gpu/drm/rockchip/cdn-dp-core.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

-- 
2.24.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
