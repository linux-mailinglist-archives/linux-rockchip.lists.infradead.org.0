Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B6B9D1F11
	for <lists+linux-rockchip@lfdr.de>; Thu, 10 Oct 2019 05:45:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Eo1rS/dmWgzJ8faIB/ZdoTolAICUeTbHTcCVPC+TubM=; b=ohj
	f/yu4WueJRGqxq7ZdEU3dW02znLAEoNz05AOfbOXwLkuFqYo6hVR/Yb3yVb8I3zXpVccUFvHBquNE
	m4clP/R6dKQiC1TCuGnMOM26K/Xg4X0TAF2UPx/44qG/nfCXNrmTrtkWELWbm3R293YZijEpsECf2
	FD9qtixKFaUkPyYYRL0SUvIYyx7BoOgch7U9vnATQvJvUzyS+uJKIVPlsn/1CdG8kheCumMu5GGno
	zklu6AHV4nlONxxe8augw4Dpqu2Hfk/mdaeadfgNkxZCuhBBMZ7hCDJ+gXDO+K0Po8Ik+wPD/WztS
	KaHkqo29Zaq8XXE2VnEs8O8R0Zq5PGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIPNv-0007Ka-Rl; Thu, 10 Oct 2019 03:45:03 +0000
Received: from mail-pf1-f174.google.com ([209.85.210.174])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIPNs-000746-Ba
 for linux-rockchip@lists.infradead.org; Thu, 10 Oct 2019 03:45:01 +0000
Received: by mail-pf1-f174.google.com with SMTP id a2so2968038pfo.10
 for <linux-rockchip@lists.infradead.org>; Wed, 09 Oct 2019 20:44:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=550gxSeJhzNkTjxw5FC1sTsyheSIffBNoMopfL6z+Dk=;
 b=Vw4rfEI8s89FCFuvjpgyDPn/7oFEZ/0O4jTg9yPgTjnMY9HfGJrZO9VyyO1ibVK0aw
 t2W9jyZG4SZ3JxZPpEJwg+tGjTSuqeXdcvcSjGKb9gGIg9BYqTaBrWCIppM0S4Y8m/5G
 4Nb+gqh8iRdpghch8ofqhlhTvNcT4LNG/uWIPUwUJg9Te7O2oPspWLVJy5I/iJtW9BF+
 l5rdr/Aek5eWKkO55muIgjoSNDIVMWgN+Eo0x4V/GcDKx+5qJBrxNjOr95oRdRRdPjJm
 ov0RTsS6kGWbfAe+5N7CSeqI+uYbvLcSE617uHcwjjsbEqNEZSlmQCN/5Iu019wwu/0Z
 lG6w==
X-Gm-Message-State: APjAAAW6OXwR3zGEB39T5GkDEv/BRE8eX/ftYzW7nLSWPVEq0BvDHAmB
 mWAgc31dAO9RCUcf+7kfqgk=
X-Google-Smtp-Source: APXvYqyhwc9uPwrA9hTdDDMnfRt6Xj0TDI+CGUJ3ZOFD4r3TR+s2KL0z8X0HW/f8P7FsK5lk0ktDXQ==
X-Received: by 2002:a62:38d5:: with SMTP id f204mr7933796pfa.100.1570679098883; 
 Wed, 09 Oct 2019 20:44:58 -0700 (PDT)
Received: from localhost.localdomain ([103.29.142.67])
 by smtp.gmail.com with ESMTPSA id z13sm4552188pfq.121.2019.10.09.20.44.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Oct 2019 20:44:58 -0700 (PDT)
From: Nickey Yang <nickey.yang@rock-chips.com>
To: heiko@sntech.de,
	hjc@rock-chips.com
Subject: [PATCH 0/1] drm/rockchip: vop: add the definition of dclk_pol
Date: Thu, 10 Oct 2019 11:44:51 +0800
Message-Id: <20191010034452.20260-1-nickey.yang@rock-chips.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_204500_394406_E0FF1F9D 
X-CRM114-Status: UNSURE (   5.27  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.174 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.174 listed in wl.mailspike.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (nickey.yang05[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (nickey.yang05[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
 linux-rockchip@lists.infradead.org, nickey.yang@rock-chips.com,
 seanpaul@chromium.org, laurent.pinchart@ideasonboard.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org


Nickey Yang (1):
  drm/rockchip: vop: add the definition of dclk_pol

 drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 12 +++---
 drivers/gpu/drm/rockchip/rockchip_drm_vop.h |  8 +++-
 drivers/gpu/drm/rockchip/rockchip_vop_reg.c | 45 ++++++++++++++-------
 3 files changed, 43 insertions(+), 22 deletions(-)

-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
