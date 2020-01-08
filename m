Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66793134F86
	for <lists+linux-rockchip@lfdr.de>; Wed,  8 Jan 2020 23:43:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1HJChbqJV1XjQkPYKw6KKtPznzP2brGwZ9zOSMxAwoM=; b=hXJ/WlHh+VtnYi
	r8d5vWmM5Py1lKu716Nc81isvFrWLmkPcAhUnVqCytGfqbEzV21LJ9PDml2jNdMergt08eTf8fiyV
	OVhoT6l+qahg2oin3thHef5vgJGvWUQXuRqrgN+2+fuC4nYt1IRdK9eNHWQuNnsnX2J+A5Hl1Slsl
	Q3SjHhOFGUiaLkv9jWCY/nLxpFkceSqrr7ZiFcTDt4Z7rwihQaMU3mAGebdraWiz/COvbfWA+wBQ3
	R6qHrxE1bGHtKM0U2IoDPfeX874Zn7YEzATm5GvCwMkV4y04LpyQZ/aDrWCi4Qng3XB1SPpt/TRDO
	Ytpyhyk8cr92QCL3E06w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipK2y-0005mp-7C; Wed, 08 Jan 2020 22:43:28 +0000
Received: from mail.manjaro.org ([176.9.38.148] helo=manjaro.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipK2Z-0005Pq-V5; Wed, 08 Jan 2020 22:43:05 +0000
Received: from localhost (localhost [127.0.0.1])
 by manjaro.org (Postfix) with ESMTP id 998C236E4DCD;
 Wed,  8 Jan 2020 23:43:02 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at manjaro.org
Received: from manjaro.org ([127.0.0.1])
 by localhost (manjaro.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fFgckuw6szdY; Wed,  8 Jan 2020 23:42:59 +0100 (CET)
From: Tobias Schramm <t.schramm@manjaro.org>
To: Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>
Subject: [PATCH 0/1] Regression in rockchipdrm
Date: Wed,  8 Jan 2020 23:39:48 +0100
Message-Id: <20200108223949.355975-1-t.schramm@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_144304_196788_8A843CFC 
X-CRM114-Status: UNSURE (   4.98  )
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

This series resolves the issue by restoring the data types changed in
commit 2589c4025f13 to their original type.

Tobias Schramm (1):
  drm/rockchip: fix integer type used for storing dp data rate and lane
    count

 drivers/gpu/drm/rockchip/cdn-dp-core.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

-- 
2.24.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
