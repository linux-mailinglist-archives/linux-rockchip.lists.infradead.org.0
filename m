Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5DC2181FE9
	for <lists+linux-rockchip@lfdr.de>; Wed, 11 Mar 2020 18:47:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zKKLvMCevYleeR+yW0LiXtq4ntf96HIeuTV/rYsJqG0=; b=NZRdYM8bjQvc1H
	ZtNWWl94qtOr2H4cCc81ZRni+8EIGDNkSxTDYiN2S/n7qC0YqxMBKeSRlwe52l+WHr3K/2LO0kc8d
	tuksx2uVCwiYNt76AQJf8NDlq2D0Ealawl7NXVqXTewLCRk4Kw0U3f4j06ddbBj/RdZYA5r0KAaFs
	a9NsdfzDUYTPE1Zq0hwaKC6olGtWQO9F7/AIQnA7NGyEK2GKLw3gwmGIHeVgRiQquaO/gtqjApj6e
	fFEdHKUcRMeJ+jKftoYUMt43shCxfdZJXIyW0I5SldXJKJQy2QwenJYDo/P3GQZ2GAPxmKtzhcO/+
	t1nssgMofY/4PGSnMgyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC5Rr-0001YA-I6; Wed, 11 Mar 2020 17:47:15 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC5Ro-0001WM-CC
 for linux-rockchip@lists.infradead.org; Wed, 11 Mar 2020 17:47:13 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id A91D02912DA
From: Ezequiel Garcia <ezequiel@collabora.com>
To: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 0/6] hantro: set of small cleanups and fixes
Date: Wed, 11 Mar 2020 14:42:54 -0300
Message-Id: <20200311174300.19407-1-ezequiel@collabora.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_104712_547634_B7D4292B 
X-CRM114-Status: UNSURE (   9.08  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Tomasz Figa <tfiga@chromium.org>, Heiko Stuebner <heiko@sntech.de>,
 Alexandre Courbot <acourbot@chromium.org>, Jonas Karlman <jonas@kwiboo.se>,
 Nicolas Dufresne <nicolas@ndufresne.ca>, Hans Verkuil <hverkuil@xs4all.nl>,
 Jeffrey Kardatzke <jkardatzke@chromium.org>, kernel@collabora.com,
 Ezequiel Garcia <ezequiel@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi all,

Here's a few patches with some cleanups and fixes.

The main idea here is to address two issues, and while
at it, clean the driver a bit.

The first issue can be found in Patch 1, when the Request
API is used, the CAPTURE buffer should be returned _before_
the OUTPUT buffer, to avoid waking up userspace prematurely.

I noticed this issue while working on the rkvdec driver,
but this time I've decided to tackle it at the core,
in v4l2_m2m_buf_done_and_job_finish().

The second issue is a simple compliance issue, which is solved
by refactoring the driver, dealing with internal set format
properly.

I suspect it's really late for v5.7, but if we are still
in time, that would be lovely.

Thanks,
Ezequiel

Ezequiel Garcia (6):
  v4l2-mem2mem: return CAPTURE buffer first
  hantro: Set buffers' zeroth plane payload in .buf_prepare
  hantro: Use v4l2_m2m_buf_done_and_job_finish
  hantro: Remove unneeded hantro_dec_buf_finish
  hantro: Move H264 motion vector calculation to a helper
  hantro: Refactor for V4L2 API spec compliancy

 drivers/media/v4l2-core/v4l2-mem2mem.c     |  11 +-
 drivers/staging/media/hantro/hantro.h      |   4 -
 drivers/staging/media/hantro/hantro_drv.c  |  37 ++-----
 drivers/staging/media/hantro/hantro_hw.h   |  31 ++++++
 drivers/staging/media/hantro/hantro_v4l2.c | 111 +++++++++++----------
 5 files changed, 108 insertions(+), 86 deletions(-)

-- 
2.25.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
