Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2C371F0F97
	for <lists+linux-rockchip@lfdr.de>; Sun,  7 Jun 2020 22:25:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LWK8pnya3x8HU+CbugpyGR4GGAPmAKqp6jRkDrwsokc=; b=Sc8qRmTqjlK9xt
	pE7XteO21EzYPat3ybv3aQC1J7byaZ5PpgQbtCXZeh7hO7xJH6xXvPGhxNhNFlTf/s1BQCJNfm+Ar
	Jm7n4fQHywwrzo+UgvZhDJ+2a2pPOGkxdWivgOtdUdFGa0QrAff3p6mGVQrgLstVXNRWv6O/kfjXB
	lVKQR55EHyts4Pf1RLl0YG1oYTStN4RQG1cziEc2dUju4BUFjq6Njr+rmoe8BGCkB/dGgzEV6VOCU
	HhGt14vloXLuupbVQY3KGqnwo1OobhzsUE3qXD/50+DB/OdFzPhQoeJOxwDntacJTOX5ilntYRUPD
	JmyDbxWLmcej9JUlspEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ji1rM-0003YF-KN; Sun, 07 Jun 2020 20:25:36 +0000
Received: from o1.b.az.sendgrid.net ([208.117.55.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ji1rF-0003W2-7J
 for linux-rockchip@lists.infradead.org; Sun, 07 Jun 2020 20:25:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=from:subject:to:cc:content-type:content-transfer-encoding;
 s=001; bh=9+UFvR2HLQ1OtsQEFQDlYZvMrwIZ+EbLi39KqEqSC5c=;
 b=PT5/SPwDAKr7hCt/j9ChohbEuXIFE9HVYER3FGySHJCRHG8yfhB5E5ill2UxtU5r+Oll
 ahdPcZND/NfLoiG/dgAGsTGi8C8EG6vGNDhFFZ7UhkZ2jnl1J6j1Tc9hwk5pKPAzJeNt+3
 YJfqoUmq/C7tUiJfY2lPmGR0UToA2v3Ng=
Received: by filterdrecv-p3mdw1-6f5df8956d-x2qpw with SMTP id
 filterdrecv-p3mdw1-6f5df8956d-x2qpw-20-5EDD4D35-1
 2020-06-07 20:25:25.100926506 +0000 UTC m=+346300.487522929
Received: from bionic.localdomain (unknown)
 by ismtpd0001p1lon1.sendgrid.net (SG) with ESMTP
 id zJEc6mt4Tsa6oQIoDupI0g Sun, 07 Jun 2020 20:25:24.908 +0000 (UTC)
From: Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH 0/2] drm: rockchip: add NV15 and NV20 support
Date: Sun, 07 Jun 2020 20:25:25 +0000 (UTC)
Message-Id: <20200607202521.18438-1-jonas@kwiboo.se>
X-Mailer: git-send-email 2.17.1
X-SG-EID: =?us-ascii?Q?TdbjyGynYnRZWhH+7lKUQJL+ZxmxpowvO2O9SQF5CwCVrYgcwUXgU5DKUU3QxA?=
 =?us-ascii?Q?fZekEeQsTe+RrMu3cja6a0h6O1z6Pg2iWyq5iV4?=
 =?us-ascii?Q?A+F4I6TvUqYcjYtDAgN2Hadv6t1FKJVFTvJ+DT8?=
 =?us-ascii?Q?LaIMpqOITdDIRmvVNs35SgjYXThyqH1y8DgqqHX?=
 =?us-ascii?Q?3JKHnGMsXylrb7yGepc0p2SQbhHobWSmfUjJBmc?=
 =?us-ascii?Q?h+7mzeQvjMf=2FtnBcJhWcev7ySWUtKZf6tVI=2FFmf?=
 =?us-ascii?Q?jaXZbxYifET8rCSjPNpwg=3D=3D?=
To: Sandy Huang <hjc@rock-chips.com>, Heiko =?iso-8859-1?q?St=FCbner?=
 <heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200607_132532_483055_C7DC0AF3 
X-CRM114-Status: UNSURE (   8.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [208.117.55.133 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [208.117.55.133 listed in wl.mailspike.net]
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
Cc: Thomas Zimmermann <tzimmermann@suse.de>, Jonas Karlman <jonas@kwiboo.se>,
 David Airlie <airlied@linux.ie>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 linux-kernel@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
 linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org,
 Daniel Vetter <daniel@ffwll.ch>, Brian Starkey <brian.starkey@arm.com>,
 Ben Davis <ben.davis@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi,

This series adds support for displaying 10-bit 4:2:0 and 4:2:2 formats produced
by the Rockchip Video Decoder on RK322X, RK3288, RK3328, RK3368 and RK3399.

First patch adds a new fourcc 10-bit YUV format with 4:2:2 sub-sampling.
Second patch adds support for using the the two new fourcc formats.
Both depend on "drm: drm_fourcc: add NV15, Q410, Q401 YUV formats" at [1].

This series can also be found at [2], and can be tested on RK3399 using an
upcoming rkvdec series at [3] together with ffmpeg at [4] and kodi-gbm or mpv.

[1] https://patchwork.freedesktop.org/series/76326/
[2] https://github.com/Kwiboo/linux-rockchip/commits/next-20200605-fmt_10
[3] https://github.com/Kwiboo/linux-rockchip/commits/next-20200605-rkvdec
[4] https://github.com/Kwiboo/FFmpeg/commits/v4l2-request-hwaccel-4.2.2-rkvdec

Regards,
Jonas

Jonas Karlman (2):
  drm: drm_fourcc: add NV20 YUV format
  drm: rockchip: add NV15 and NV20 support

 drivers/gpu/drm/drm_fourcc.c                |  4 +++
 drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 27 ++++++++++++++++--
 drivers/gpu/drm/rockchip/rockchip_drm_vop.h |  1 +
 drivers/gpu/drm/rockchip/rockchip_vop_reg.c | 31 +++++++++++++++++----
 include/uapi/drm/drm_fourcc.h               |  1 +
 5 files changed, 56 insertions(+), 8 deletions(-)

-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
