Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B113914306F
	for <lists+linux-rockchip@lfdr.de>; Mon, 20 Jan 2020 18:06:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OGgrzJThpgKQsmBlGG2IpvG8gzWHvcIEQWEZrWKxagU=; b=G5/YjYAHSzXvCt
	siRHKgenjy1TZYGqmmkagGaOD+FZCCydWycfKx7GSVY+ZA/QQ7l0YhxD85EG25OSJePwlPXthdEuM
	mavVJZ2adu5lvrv652QxMahNs5/hnF7vmWqQgY00aB10NI3UV6DGQa6p5aWBvh948SM5nInWoUu1/
	pTzvpEAhqndfIhtyMxqOBM8VEdqC9sfIUxfEvk40wJ1mJHl2FOwl3VvoMktLLEA9OQ5HiVeRiyPj1
	9Jgc1Gm8Am+VJpOtyU6noowQPZFecRrVzoLodT5eygXLcsWvjALackuHXO+HkFdFSk3xr+MLbz+uG
	DawrwZv6/i2E+8eS8hqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itaVY-0007KZ-Rf; Mon, 20 Jan 2020 17:06:36 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itaVF-00079x-Ru; Mon, 20 Jan 2020 17:06:24 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 9F2C02912D9
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Rafael J . Wysocki" <rafael@kernel.org>, Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>
Subject: [PATCH 0/5] drm/rockchip: Fix unbind/bind
Date: Mon, 20 Jan 2020 14:05:57 -0300
Message-Id: <20200120170602.3832-1-ezequiel@collabora.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_090618_033150_34698A19 
X-CRM114-Status: UNSURE (   8.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org, kernel@collabora.com,
 Ezequiel Garcia <ezequiel@collabora.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

This series is an attempt to fix the unbind/bind crash
(due to an use-after-free bug) found on rockchip-drm driver.

The problem lies in the way the driver uses the component API.
Currently, rockchip_drm_unbind calls component_unbind_all before
drm_mode_config_cleanup, the former releasing the memory
where the DRM objects are embedded.

The series goal is basically to fix all the components,
making proper use of the respective .destroy hooks,
making sure there are no use-after-free or double-free issues.

The first patch is likely the most controversial, which is required
because component_bind_all will call component_unbind without
calling drm_mode_config_cleanup, if any component fails to bind.
As mentioned above, this is problematic in the DRM framework.

Thanks!
Ezequiel

Ezequiel Garcia (5):
  component: Add an API to cleanup before unbind
  drm/rockchip: Fix the device unbind order
  drm/rockchip: vop: Fix CRTC unbind
  drm/rockchip: lvds: Fix component unbind
  drm/rockchip: rk3066_hdmi: Cleanup component unbind

 drivers/base/component.c                    |  9 +++-
 drivers/gpu/drm/rockchip/rk3066_hdmi.c      |  8 +--
 drivers/gpu/drm/rockchip/rockchip_drm_drv.c | 20 +++++---
 drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 56 ++++++++-------------
 drivers/gpu/drm/rockchip/rockchip_lvds.c    | 20 ++++----
 include/linux/component.h                   | 10 +++-
 6 files changed, 60 insertions(+), 63 deletions(-)

-- 
2.25.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
