Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93A317C99B
	for <lists+linux-rockchip@lfdr.de>; Wed, 31 Jul 2019 19:00:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=XdnkV8RO0AuAVjFnejmKUPWp2Qlwi49V0YR/ZMYsf2o=; b=RHP3xhXADJLdDiPe4B+21uZQLn
	GutOowXNOVP+41Qjd3LHsdtoVwzX7uSZWi8p6Ptowg3fMx6QOWIidbbUZ4vmxfbCDbI4jhzrgXHxo
	Xc29ly6gRBsvtNVuwuEqkIf3f4lVB9q7Sf0UAuOmGdwB8v+DR+tqNXxlvFQNFlSAEVCN80NbJwbjn
	Y7l/ebyVdRtcDbfsOWvP/pHmqXZS4HvK3jx+09X01S21YDr/LtuY/RIelW8W46d9T76Ncr310q1Jf
	sd3OX2moKbONpJn0qESFEG4lwp+0JbWP/J3nW0UpoZ2kzYb/gjA7wnef9sH8fQNrENSZQHtbt0svT
	K02fYjGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsrxi-00025k-7G; Wed, 31 Jul 2019 17:00:26 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsrwM-00083Q-RV; Wed, 31 Jul 2019 16:59:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=References:In-Reply-To:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1bufJqwoKbCiwEot6MVjdUsaM4z+H67baZv+y4tFAAY=; b=IcOs7cXf+jxEmTmhPsNMgjmED
 OdRytIWXrm9JH5nL/gfKdWog9MJkHRrIZFT1Yv1INWft2heaSgGsttOKqujA9NgdbcooU4H6AA26u
 Y0CO8prINcuAZ/LRmL/jhZYjNdpRWt6w6eNiEIZKksZXqnwXjyso0QR0y1EiVRgHZOFz5+hxcqbI5
 cCNOE5DYHfs40XoeXtfz9MZecidthq1bGfeegwRfeiE0OoxNz/KY7ua6Ro8+bf6DdvMB6eMyx3LfY
 ouOrMkCI0DGnq4+alsxVQ1ctw+X4SR2zLM8uFU3kc0toMB8Tu1tXAy9UUWNz7BqVUo8EEzxL5LBjO
 NWaBnbKbQ==;
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsrwW-0005tz-3c; Wed, 31 Jul 2019 16:59:14 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id 00FC528BEFC
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH 02/13] drm/radeon: Eliminate possible use of an uninitialized
 variable
Date: Wed, 31 Jul 2019 18:58:11 +0200
Message-Id: <cfff357a07bfa572baad058947f281b7095e1794.1564591626.git.andrzej.p@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1564591626.git.andrzej.p@collabora.com>
References: <65481afa-1104-4ee9-e53d-f2732a10d4b9@baylibre.com>
 <cover.1564591626.git.andrzej.p@collabora.com>
In-Reply-To: <cover.1564591626.git.andrzej.p@collabora.com>
References: <cover.1564591626.git.andrzej.p@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_175912_202591_DFE2F07F 
X-CRM114-Status: GOOD (  13.42  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.0 points, 5.0 required)
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
Cc: =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 David Airlie <airlied@linux.ie>, Ramalingam C <ramalingam.c@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>,
 Bhawanpreet Lakha <Bhawanpreet.Lakha@amd.com>, Eric Anholt <eric@anholt.net>,
 Thierry Reding <thierry.reding@gmail.com>,
 Mamta Shukla <mamtashukla555@gmail.com>, kernel@collabora.com,
 Anthony Koo <Anthony.Koo@amd.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 "David \(ChunMing\) Zhou" <David1.Zhou@amd.com>,
 Mario Kleiner <mario.kleiner.de@gmail.com>, linux-samsung-soc@vger.kernel.org,
 Joonyoung Shim <jy0922.shim@samsung.com>,
 Tomi Valkeinen <tomi.valkeinen@ti.com>, David Francis <David.Francis@amd.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 linux-rockchip@lists.infradead.org, Kukjin Kim <kgene@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 CK Hu <ck.hu@mediatek.com>, Harry Wentland <harry.wentland@amd.com>,
 Shashank Sharma <shashank.sharma@intel.com>, freedreno@lists.freedesktop.org,
 linux-tegra@vger.kernel.org, Philipp Zabel <p.zabel@pengutronix.de>,
 Leo Li <sunpeng.li@amd.com>, linux-kernel@vger.kernel.org,
 intel-gfx@lists.freedesktop.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>, Inki Dae <inki.dae@samsung.com>,
 linux-mediatek@lists.infradead.org, Jyri Sarha <jsarha@ti.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Sean Paul <sean@poorly.run>,
 Allison Randal <allison@lohutok.net>, amd-gfx@lists.freedesktop.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Seung-Woo Kim <sw0312.kim@samsung.com>, Sandy Huang <hjc@rock-chips.com>,
 Nicholas Kazlauskas <nicholas.kazlauskas@amd.com>,
 Todor Tomov <todor.tomov@linaro.org>, Rob Clark <robdclark@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Alex Deucher <alexander.deucher@amd.com>,
 Shawn Guo <shawnguo@kernel.org>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

ddc local variable is passed to drm_connector_init_with_ddc() and should
be NULL if no ddc is available.

Signed-off-by: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
---
 drivers/gpu/drm/radeon/radeon_connectors.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/radeon/radeon_connectors.c b/drivers/gpu/drm/radeon/radeon_connectors.c
index b3ad8d890801..d11131d03ed6 100644
--- a/drivers/gpu/drm/radeon/radeon_connectors.c
+++ b/drivers/gpu/drm/radeon/radeon_connectors.c
@@ -1870,7 +1870,7 @@ radeon_add_atom_connector(struct drm_device *dev,
 	struct radeon_connector_atom_dig *radeon_dig_connector;
 	struct drm_encoder *encoder;
 	struct radeon_encoder *radeon_encoder;
-	struct i2c_adapter *ddc;
+	struct i2c_adapter *ddc = NULL;
 	uint32_t subpixel_order = SubPixelNone;
 	bool shared_ddc = false;
 	bool is_dp_bridge = false;
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
