Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D8831F1AC9
	for <lists+linux-rockchip@lfdr.de>; Mon,  8 Jun 2020 16:17:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2v37oxA6lwf0Yn8KRGBb75hZs6GP7s8BQbPzdF2sAag=; b=UuHNZtV4c6s+5i
	gWyTsLvgFGXmH6QUVmstRU1gP2NMJRixFOosCbDZ3D1z5HSnxzCA/CRZTp9jNeV1DmU6PcdvlFMnh
	PxLlN00bp//cxNVWU6o1mG/Ky+lSc+fvK+0dtNs0dTDxALHIilmYYM6ZteB9GAOifmW+9U3a+rzku
	xB0xF9if2X8QzYziYEQ5HehiGIPFFny+xBGCG4LuNOwiCtxvQwFHqKXCryFSjAGpCCaayO2Il/fxT
	dE+Pv4pJgxUhgqxLCKe2XNWjpFbz04izMr+QnKfYkEdp/qfEFBabcQkVMg1F7ammna5YdYLcDq8of
	yStEk/sM/rKP6mln17zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiIad-0004pv-2f; Mon, 08 Jun 2020 14:17:27 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiIaZ-0004pb-EY
 for linux-rockchip@lists.infradead.org; Mon, 08 Jun 2020 14:17:25 +0000
Received: by mail-pg1-x541.google.com with SMTP id o6so8826789pgh.2
 for <linux-rockchip@lists.infradead.org>; Mon, 08 Jun 2020 07:17:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=5pbLgjD174lJLbQtTvS64cqfwYswZvBW74NPa06S60U=;
 b=ILj2rcjys6G/C//2ShgdHcbItwz8+81YyE3yNaV7wMz4CghZzxzFX9N7lvg0J2eJbw
 Z/fYWeXT3jFNiG03yqoXVgu11O6Gr0BUBZYuBKFJPT39MqzB79DxbhLiOF7B6Vbg2laP
 HBieOK3SiYO3C0qBmq403VajkjUpDkj4ODMgM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=5pbLgjD174lJLbQtTvS64cqfwYswZvBW74NPa06S60U=;
 b=gfIlu+GFCVYJGr/CbB20hxD57pIvrcjICCpd30SpI/ttDVuOX0rn9LyzR//DLOy4QY
 67Slr32mr63Yl0WyZmhYVoSVFIA6DDEqg72zxwKWI6srzMpOQo1RAWc3Qfc1aMK3RAA/
 SAzxVf8cKsAw8BvTEh9wDRfIwrRkmMRdYUvVZeZrOqKAMuFWsyn3lEkdjDYQBZu/9Ajy
 EJ6fY+yxksxUnHVGGP5QGZvxlyIQL+n3rcGN7AhbAnfuQZ1U7N4hI3vy8iojeYWWo5Ai
 46kTAlpUYIByYoPcF19mcR87tK0puzW7eeDAGcFYIPMYecQcCKa2m7vHkQ5fEPGblYZj
 1F6w==
X-Gm-Message-State: AOAM531P95sj2ILTCu2HH/Gi5yjWXW/227vQ7fv0ARvL+Mv1aQic4OGq
 8IW3+LFpDKwTZiIDl2I3RvZ6hg==
X-Google-Smtp-Source: ABdhPJybCyIUwUGTpPxE3hsLh+t6an9x0xmufqUnqezej88ALuo8Kd63yJ9WI3tVAVzurWN7YyxNPg==
X-Received: by 2002:a62:5ac1:: with SMTP id o184mr21198908pfb.97.1591625842096; 
 Mon, 08 Jun 2020 07:17:22 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:9043:af95:b7b4:3ade])
 by smtp.gmail.com with ESMTPSA id n2sm6143340pgv.65.2020.06.08.07.17.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 08 Jun 2020 07:17:21 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Simon Glass <sjg@chromium.org>
Subject: [PATCH] rk3399: Add BOOTENV_SF command
Date: Mon,  8 Jun 2020 10:17:08 -0400
Message-Id: <20200608141708.31844-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_071723_914240_C72B7279 
X-CRM114-Status: UNSURE (   6.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: U-Boot-Denx <u-boot@lists.denx.de>, linux-rockchip@lists.infradead.org,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 Jagan Teki <jagan@amarulasolutions.com>,
 Suniel Mahesh <sunil@amarulasolutions.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Add missing BOOTENV_SF command in rk3399 config.

Fix it.

Fixes: f263b860acf8 ("rk3399: Enable SF distro bootcmd")
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Reported-by: Suniel Mahesh <sunil@amarulasolutions.com>
Tested-by: Suniel Mahesh <sunil@amarulasolutions.com>
---
 include/configs/rk3399_common.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/configs/rk3399_common.h b/include/configs/rk3399_common.h
index f0ae6e67a7..e63ebb14f7 100644
--- a/include/configs/rk3399_common.h
+++ b/include/configs/rk3399_common.h
@@ -67,6 +67,7 @@
 	"partitions=" PARTS_DEFAULT \
 	ROCKCHIP_DEVICE_SETTINGS \
 	BOOTENV \
+	BOOTENV_SF \
 	"altbootcmd=" \
 		"setenv boot_syslinux_conf extlinux/extlinux-rollback.conf;" \
 		"run distro_bootcmd\0"
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
