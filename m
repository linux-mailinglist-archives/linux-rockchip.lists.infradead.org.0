Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F1B119B7B3
	for <lists+linux-rockchip@lfdr.de>; Wed,  1 Apr 2020 23:37:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hWE32svlMqfeap3GtaV/UrXwns8WOb5dYZFdZtTw88A=; b=FWsZNvagOay6Dh
	nkKjiz02NnMHLboSxiBp1wS4EKUWgQD8WkQgJx21flEejOik2vNsN6OqphCKZl26gM1uQpAXIiTgT
	O1zUSLzVl/z6pkye0bfix/IWYIfRRkuwB+1BtfJayDntKAmt6iKX0KoKQrN3IuLMgCfUsBl3iGDbE
	sJ1ZaS/+vImiQZHT5G04Se1S6ylwF7GZXFcVSzjT/8PyDW/+3mRvKFnJCPnHHRYvXJE194TU8u39z
	3WYIptbp7QDWaKew1qR3IXOIRi0xM6TlPVw3l6P1i9nuGEiQwGEOQUQunx1VKC1s9tiuWVTZ7UDZd
	P33BJ9G0++3pooD3099Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJl3O-0004Lj-Fc; Wed, 01 Apr 2020 21:37:42 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJl3L-0004Ka-C4
 for linux-rockchip@lists.infradead.org; Wed, 01 Apr 2020 21:37:40 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 9262829769C
From: Ezequiel Garcia <ezequiel@collabora.com>
To: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 0/3] Rockchip ISP1 minor fixes
Date: Wed,  1 Apr 2020 18:37:18 -0300
Message-Id: <20200401213721.24173-1-ezequiel@collabora.com>
X-Mailer: git-send-email 2.26.0.rc2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_143739_539199_0786803C 
X-CRM114-Status: UNSURE (   5.27  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
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
Cc: Hans Verkuil <hverkuil@xs4all.nl>, kernel@collabora.com,
 Ezequiel Garcia <ezequiel@collabora.com>
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

Ezequiel Garcia (3):
  rkisp1: Get rid of unused variable warning
  phy-rockchip-dphy-rx0: Drop unneeded CONFIG_OF dependency
  rkisp1: Fix wrong PHY config dependency

 drivers/staging/media/phy-rockchip-dphy-rx0/Kconfig | 2 +-
 drivers/staging/media/rkisp1/Kconfig                | 2 +-
 drivers/staging/media/rkisp1/rkisp1-dev.c           | 3 +--
 3 files changed, 3 insertions(+), 4 deletions(-)

-- 
2.26.0.rc2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
