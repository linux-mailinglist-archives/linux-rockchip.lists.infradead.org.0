Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C130619CA6B
	for <lists+linux-rockchip@lfdr.de>; Thu,  2 Apr 2020 21:45:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sgKTYbZZiLMMUxSboujRFQZQoUZsyQCcY6Y2D4OLFTw=; b=cKkRRby7B83Ewz
	n8z6YMgexe4G4DO28REUX74QgaTa2bJkCCd4NFcC4mrWaVWmH3UppRL1DcAYyulsp2a4hkgusAdsI
	LY5dhclbkLXqhHJcjjNeizQLEdxPYEG/4L2QAtj9tRNxLaU3hG1ABeFcdTGgkBxZpRnVDxr6ZOgbS
	MLiF+3JBY2eeIBK+FQjN+tLQEPbCoBgKjb/gvf5R3uFrQbJlNdvDfgSSEKQGgshDSmxPNQvqqb3hr
	PkskDWzYkgvvPxXYERg3IGcmetu6EFSCW8DRwmAfkccfYPZMFxEm8RjpehYozhAwJrNv+4ZgXH59w
	he6BrdkX19khHbLsoFmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jK5mD-0005kd-Rd; Thu, 02 Apr 2020 19:45:21 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jK5mA-0005kF-Cn
 for linux-rockchip@lists.infradead.org; Thu, 02 Apr 2020 19:45:19 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id E0EB028A9AD
From: Ezequiel Garcia <ezequiel@collabora.com>
To: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/3] Rockchip ISP1 minor fixes
Date: Thu,  2 Apr 2020 16:45:01 -0300
Message-Id: <20200402194504.5331-1-ezequiel@collabora.com>
X-Mailer: git-send-email 2.26.0.rc2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_124518_564423_EE9F3F9B 
X-CRM114-Status: UNSURE (   4.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Hans Verkuil <hverkuil@xs4all.nl>, Ezequiel Garcia <ezequiel@collabora.com>,
 Helen Koike <helen.koike@collabora.com>, kernel@collabora.com,
 Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

A small series of minor fixes I stumbled upon while
doing compile testing.

Patch 1 gets rid of an 'unused variable' warning, triggered
by building without CONFIG_OF.

Patches 2 and 3 cleanup the dependency of phy-rockchip-dphy-rx0
and rkisp1 drivers.

Compile-tested only.

v2:

* Use of_device_get_match_data as suggested by Robin.

Ezequiel Garcia (3):
  rkisp1: Get rid of unused variable warning
  phy-rockchip-dphy-rx0: Drop unneeded CONFIG_OF dependency
  rkisp1: Fix wrong PHY config dependency

 drivers/staging/media/phy-rockchip-dphy-rx0/Kconfig | 2 +-
 drivers/staging/media/rkisp1/Kconfig                | 2 +-
 drivers/staging/media/rkisp1/rkisp1-dev.c           | 8 ++++----
 3 files changed, 6 insertions(+), 6 deletions(-)

-- 
2.26.0.rc2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
