Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 244111932BE
	for <lists+linux-rockchip@lfdr.de>; Wed, 25 Mar 2020 22:35:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Ki/lOkEl2DJ7v+hrAwzjDMjOHRqxEaaeqQb8KU2P3L8=; b=SnfxSlirp+brGI
	++M2MZ/qCl+ETJiTn5maGQGtv+0rNVZUi5MNWXOFdG/EHq7AEr8+RSDqYi8TMVd7xj164squp9ATg
	8A13IdlkPv0SFnZjFRhet7UDiZnlQn0aW48wW8cqF9wTCFNm+ly6845siT1OwJS7MPwyqdgEmVc9w
	u3T112kDjHewh8u/i2TvT42mtDQWpzpXn7fnFo0ysVwHqmmqCmn+fYwZoms+00twudzEs5LyBOXaa
	YrMBEuxPcUU/2ZbF3ZSOl8vYwJg4A4ElslRx19eT0AUhB9b5k62fWDW1gjORLBL2wxecAC5I0hX5M
	ApuBKPcKsuXNAlE94+/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHDfv-0006L7-HE; Wed, 25 Mar 2020 21:34:59 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHDfs-0006Kj-08
 for linux-rockchip@lists.infradead.org; Wed, 25 Mar 2020 21:34:57 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id DA42F293EA8
From: Ezequiel Garcia <ezequiel@collabora.com>
To: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v3 0/7] hantro: set of small cleanups and fixes
Date: Wed, 25 Mar 2020 18:34:31 -0300
Message-Id: <20200325213439.16509-1-ezequiel@collabora.com>
X-Mailer: git-send-email 2.26.0.rc2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_143456_177506_FD316DA9 
X-CRM114-Status: GOOD (  10.27  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh@kernel.org>,
 Tomasz Figa <tfiga@chromium.org>, Heiko Stuebner <heiko@sntech.de>,
 Alexandre Courbot <acourbot@chromium.org>, Jonas Karlman <jonas@kwiboo.se>,
 Nicolas Dufresne <nicolas@ndufresne.ca>, Hans Verkuil <hverkuil@xs4all.nl>,
 devicetree@vger.kernel.org, Jeffrey Kardatzke <jkardatzke@chromium.org>,
 kernel@collabora.com, Ezequiel Garcia <ezequiel@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi all,

Cleanups and fixes, third iteration.

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

Note that patch 7 still needs reviews from device tree maintainers.

Changes v3:

* Rebased media master.

* Revert buffer sequence removal change.

Changes v2:

* Fix compile warning introduced by patch 6.

* I'm adding two additional patches this time.
  Patch 7 converts the binding to json-schema,
  and patch 8 puts linux-rockchip mailing list in MAINTAINERS. 

Thanks,
Ezequiel

Ezequiel Garcia (7):
  v4l2-mem2mem: return CAPTURE buffer first
  hantro: Set buffers' zeroth plane payload in .buf_prepare
  hantro: Use v4l2_m2m_buf_done_and_job_finish
  hantro: Remove unneeded hantro_dec_buf_finish
  hantro: Move H264 motion vector calculation to a helper
  hantro: Refactor for V4L2 API spec compliancy
  dt-bindings: rockchip-vpu: Convert bindings to json-schema

 .../bindings/media/rockchip-vpu.txt           |  43 -------
 .../bindings/media/rockchip-vpu.yaml          |  82 +++++++++++++
 MAINTAINERS                                   |   2 +-
 drivers/media/v4l2-core/v4l2-mem2mem.c        |  11 +-
 drivers/staging/media/hantro/hantro.h         |   7 +-
 drivers/staging/media/hantro/hantro_drv.c     |  28 ++---
 drivers/staging/media/hantro/hantro_hw.h      |  31 +++++
 drivers/staging/media/hantro/hantro_v4l2.c    | 111 +++++++++---------
 8 files changed, 193 insertions(+), 122 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/media/rockchip-vpu.txt
 create mode 100644 Documentation/devicetree/bindings/media/rockchip-vpu.yaml

-- 
2.26.0.rc2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
