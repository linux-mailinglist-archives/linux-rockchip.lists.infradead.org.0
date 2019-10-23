Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63C37E2380
	for <lists+linux-rockchip@lfdr.de>; Wed, 23 Oct 2019 21:57:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cB6PFtz9VuYT8KkW36Lfu4KAbOzzbSemxQnA35arSPs=; b=o1y+CHPDg8uwcM
	tqmJZFlnt/oOurAOzcONotmBi2C3jKMg3qTfJWCrBt0CcoUssz5JOiNdvxnLLqE+Ps2Y1cez7/9ZV
	vr4PIgOK7QlAFsNUGuBdVSAbZyCeyKOyy5+wh2ZsvZhL6EoG8kdc2/ArbViF2NqiaxSPoG3H7/3Dy
	eTAiLUppaiXqBaShIoAzkEcZ6DM4nzstsSSITczLHryh9RTEBwv/9yZeRedKUwC+7EfyGk1gLMCNr
	x4vve0Gey7Ya6mqJmYxLcVRrkYji+9jejxLqnfK6Oma1sjf6yl2LSSI2cJHLnDfKUgWa255c9h4uI
	pjr83aGhWwkcfrqt+4rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNMkw-00054d-22; Wed, 23 Oct 2019 19:57:18 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNMks-00052D-M6
 for linux-rockchip@lists.infradead.org; Wed, 23 Oct 2019 19:57:15 +0000
Received: by mail-pl1-x643.google.com with SMTP id q15so10606742pll.11
 for <linux-rockchip@lists.infradead.org>; Wed, 23 Oct 2019 12:57:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=I/dSc8zp8LBqE1vw+ydd8HYusz0zf83BUJfCTXC08WE=;
 b=qTVF1+3U4Z8zPXaSZ+Q1eN9iuYdrvpmjIxqOzIGoabQwf7H6xGmitqKpE3fCQSsa9E
 tiNkb6qpHuxcI5YyJS5DY1DKa9c4lrKE1CEx22T3cbBJrVIPmHgAglgP5hPdZXuyoJ8J
 LiQeT7Lg6XzKY9TeXt2pKuapkUUwKFKSkiv2E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=I/dSc8zp8LBqE1vw+ydd8HYusz0zf83BUJfCTXC08WE=;
 b=kFWoIiBR2iEk00lyOAwX76J2xKLdvCz+fjIKsxNX/3tYzhXhY3PqH1JJcT6GqHvDkb
 QEegq+3lD6HwkvqULGcMlOrb+loYZMhGdVf6X1qjpssBcdF97wY0O5fFiDy8pN5Yqr6+
 g1GDAC9sb6x2bWKulIMbjfkosRHx/Xn0fQmbyq8SP6ighj3AgnrYru1Yq6IBjhm9MZ7a
 jl3Y/586N/w1j1FTe2d4kwIt5q/m+JrwlWpcIpIxvRvuuQXPjRymJZuV+3mylxNUuaTE
 CO1wEJxGeJ4iKyFC56CWUu1LPjSLj1lcGDFUoKOCD7vvhOYA9u3Ac904EU0Tknhmu+vb
 Qu9g==
X-Gm-Message-State: APjAAAVL3ihAQ+r9JrCCROqihvEWrfy+RCC3wCoWtXpqCOB+rze/2UoS
 uTyEAzPLsVlU3eQD+BU6l8/UyQ==
X-Google-Smtp-Source: APXvYqyU/BnDBR/e5CrVPfs45COYFX/ONsWyEjMZqPKYtBDX3xVS+xb/BjgZH3N3z7P5T9kqHhOwRA==
X-Received: by 2002:a17:902:a712:: with SMTP id
 w18mr7908388plq.304.1571860633624; 
 Wed, 23 Oct 2019 12:57:13 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.31])
 by smtp.gmail.com with ESMTPSA id o185sm31499280pfg.136.2019.10.23.12.57.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Oct 2019 12:57:13 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH v4 2/7] Makefile: rockchip: Suffix platform type with tpl name
Date: Thu, 24 Oct 2019 01:26:47 +0530
Message-Id: <20191023195652.7158-3-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20191023195652.7158-1-jagan@amarulasolutions.com>
References: <20191023195652.7158-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_125714_722430_4B1AFE13 
X-CRM114-Status: UNSURE (   9.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: u-boot@lists.denx.de, linux-amarula@amarulasolutions.com,
 Jagan Teki <jagan@amarulasolutions.com>, linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Most of the platforms uses the platform type on their boot
stage image naming conventions in makefile like,

u-boot-x86-start16-tpl.bin - x86 start16 TPL bin
u-boot-spl-mtk.bin - Mediatek SPL bin

This would help to understand the users to what that
particular image belongs to? and less confused.

On that note, suffix platform type rockchip for existing
u-boot-tpl.img so now it become u-boot-tpl-rockchip.bin

Also, bin is more conventional way to include it on tools
like binman, pad_cat etc in future patches.

Note: usage of platform type doesn't follow consistent order
as of now.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 Makefile | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/Makefile b/Makefile
index 3e05d3fcfe..40cbf68fef 100644
--- a/Makefile
+++ b/Makefile
@@ -1342,10 +1342,10 @@ else
 ROCKCHIP_IMG_TYPE := rksd
 endif
 
-MKIMAGEFLAGS_u-boot-tpl.img = -n $(CONFIG_SYS_SOC) -T $(ROCKCHIP_IMG_TYPE)
-tpl/u-boot-tpl.img: tpl/u-boot-tpl.bin FORCE
+MKIMAGEFLAGS_u-boot-tpl-rockchip.bin = -n $(CONFIG_SYS_SOC) -T $(ROCKCHIP_IMG_TYPE)
+tpl/u-boot-tpl-rockchip.bin: tpl/u-boot-tpl.bin FORCE
 	$(call if_changed,mkimage)
-idbloader.img: tpl/u-boot-tpl.img spl/u-boot-spl.bin FORCE
+idbloader.img: tpl/u-boot-tpl-rockchip.bin spl/u-boot-spl.bin FORCE
 	$(call if_changed,cat)
 endif
 
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
