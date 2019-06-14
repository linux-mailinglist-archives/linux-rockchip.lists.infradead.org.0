Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90ED946C8A
	for <lists+linux-rockchip@lfdr.de>; Sat, 15 Jun 2019 00:48:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G1mU0Y6ybmWAizUqSbTrm2dXLzFo7KsxHKd9rVFIiB8=; b=HL0SzJedAsVAzR
	wGNOAi2eN1sAeNfrzJrm8RAEcCBPwP/hQdEMgJ4Hx3lwcAP0cyITsaMvCAdFZMllFoiSdJq+XGdRb
	erMSf088ZXWeXm2+/72hm77cVk3mdIeJ6yxsGai0sWESqt1AGjQEgIKHWniJB88gmlBkaCLm/TE2X
	3RPhEGc8PRbqxpxSmGbemfzhhuKjx8pxu7A63wh58b5Jrr2zZfSGpmKngM1BZu/YjYbUVoeC0pQAb
	Je9BzFDgZ+ww2Q+2Aqk5YyaJCEkUbhXKx0wAHSHMrLQQFAMCuofl63aQBs0T1d66/DPQD4FCrhb0A
	C/yFi141KMwMTAroU1YA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbuzU-0002me-8O; Fri, 14 Jun 2019 22:48:12 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbuzE-0002ay-Gf
 for linux-rockchip@lists.infradead.org; Fri, 14 Jun 2019 22:47:58 +0000
Received: by mail-pf1-x441.google.com with SMTP id x15so2254114pfq.0
 for <linux-rockchip@lists.infradead.org>; Fri, 14 Jun 2019 15:47:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=0MclKa4ww/GU4h0ModhXTnU03GxDuW7aam4X/xA5H20=;
 b=ZHrf0zetXblEGMrSWzFuV+TI9faYuEa+jhfVW9V/m0B9O+jKxO4+WjenDITlg+aFYZ
 rwkn7i/eEJwwpQKHMiEq0zlBvGsHMIF45Uf+FNPktBaKA1e7aETQITS6pxCwjG88fhY0
 xNrhAWXlbmUSTAcnqo9tAd0ptVAPAcMc7dGLQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0MclKa4ww/GU4h0ModhXTnU03GxDuW7aam4X/xA5H20=;
 b=O5T1SwT2En/AV+JIlshMi/NS44XL/qtG+Wx6h8AHzPtV28GRi9mJLEDWj+O5Hr1HiT
 hG7BUovjq2ZVzzh0siAG/xuL7KTXzUkutMSdwJAY+6RnBCm4Scyu0QlmHL80od6I85af
 BIhidwvYPmX3Zglgj34UnVcwwEPw+NqgCSe9LdKReHSFRRDqcObhGkexDev39MhfNmsF
 3ssUITmvjtTkbzsDH7AuY+sOWqqjc49i+NMr8TV5dLNcp4JdWQ9slb1vIjQFlDSChBLm
 GvIU3uGf7+IbpeOCPBzFFsgc8i2QjsEfFdvFHKimGMJHYAj3W1Y0JDzTPr1ln5knk1tq
 mYAQ==
X-Gm-Message-State: APjAAAWBOSJ2iz9pf8IRc44IoCI8ceCEi1nJRKiDZkp++r4XwGb4pcpo
 fB01Plvqy1A/2dFc33MlsJBVej1YjeI=
X-Google-Smtp-Source: APXvYqzZ+CMlOlPiOf2LQv6uMUwI93prqIodMDLjqSqBeZ5oaQMYW0ftolCisN3PIf4q8UD0Rzr7Vg==
X-Received: by 2002:a17:90a:25af:: with SMTP id
 k44mr13019616pje.122.1560552476071; 
 Fri, 14 Jun 2019 15:47:56 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com
 ([2620:15c:202:1:24fa:e766:52c9:e3b2])
 by smtp.gmail.com with ESMTPSA id x7sm3706087pfm.82.2019.06.14.15.47.55
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 14 Jun 2019 15:47:55 -0700 (PDT)
From: Douglas Anderson <dianders@chromium.org>
To: Sandy Huang <hjc@rock-chips.com>, heiko@sntech.de, seanpaul@chromium.org
Subject: [PATCH 2/2] drm/rockchip: Base adjustments of the mode based on prev
 adjustments
Date: Fri, 14 Jun 2019 15:47:30 -0700
Message-Id: <20190614224730.98622-2-dianders@chromium.org>
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
In-Reply-To: <20190614224730.98622-1-dianders@chromium.org>
References: <20190614224730.98622-1-dianders@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_154756_551964_159909B5 
X-CRM114-Status: GOOD (  10.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: David Airlie <airlied@linux.ie>, Douglas Anderson <dianders@chromium.org>,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 urjaman@gmail.com, linux-rockchip@lists.infradead.org,
 Daniel Vetter <daniel@ffwll.ch>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

In vop_crtc_mode_fixup() we fixup the mode to show what we actually
will be able to achieve.  However we should base our adjustments on
any previous adjustments that were made.

As an example, the dw_hdmi driver may wish to make some small
adjustments to clock rates in its atomic_check() function.  If it
does, it will update the adjusted_mode.  We shouldn't throw away those
adjustments.

NOTE: the version of the dw_hdmi driver upstream doesn't _actually_
make such adjustments, but downstream in Chrome OS it does.  It is
plausible that one day we'll figure out how to cleanly make that
happen in an upstream-friendly way, so we should prepare by using the
right mode.

Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

 drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
index d124f34ab9fc..09a790c2f3a1 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
@@ -1006,8 +1006,8 @@ static bool vop_crtc_mode_fixup(struct drm_crtc *crtc,
 	struct vop *vop = to_vop(crtc);
 
 	adjusted_mode->clock =
-		DIV_ROUND_UP(clk_round_rate(vop->dclk, mode->clock * 1000),
-			     1000);
+		DIV_ROUND_UP(clk_round_rate(vop->dclk,
+					    adjusted_mode->clock * 1000), 1000);
 
 	return true;
 }
-- 
2.22.0.410.gd8fdbe21b5-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
