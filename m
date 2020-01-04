Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99E67130170
	for <lists+linux-rockchip@lfdr.de>; Sat,  4 Jan 2020 09:38:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qrgZhClzTlWj3rLqurI4uA7PGGc4WIjAiLGn718Ki7I=; b=HFM4g0A+WgXGK/
	AS5/dKjNIFtcWY9vX8H/2l3ASFyCAF65uE4EeCP9mCNldJtCM3VQnVlXvg3X+J21gjqHmjRtwgK5S
	Rw5Rsne8z4FDTv8bm9VIhE+sZSVA7YpwgDFdfUpNqkxQLPjzZO6d78VccMuD5fPYmzFwntxbpClOv
	PVm93twP5g+MIpGVSzZS68TJrjOxRF3u5FixFiSAqOYjgGuovw33QBaeLFknoMQxyQS1po0roYeoa
	5E9xG85t1YNifzKKS3JmJRJGKbzJ/zJckewLD0lqlii6iURn4H3Cdsd9yZet9tCEwY/4fv4av5wLY
	kJpfiUQ31xvxjcD/88lA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inex1-00038l-H8; Sat, 04 Jan 2020 08:38:27 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inewx-00036x-HY
 for linux-rockchip@lists.infradead.org; Sat, 04 Jan 2020 08:38:25 +0000
Received: by mail-pl1-x641.google.com with SMTP id c23so19901529plz.4
 for <linux-rockchip@lists.infradead.org>; Sat, 04 Jan 2020 00:38:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=uFc+KeHVvPb55BWADcWbagsPR+XJZj6DCQVbpAY2/9o=;
 b=gJUAqMV8ZL2IfJw0qiSCnVcr6YfYxBFbZ5ieh4lIoRc+kBtnXTj0lWMCq8UdYYO7Yx
 EApQAtTH2jvmGN3FocYuDz5aTFzACouufbhEDH2p/1b3YksvUcm/oosPEcG3uHVqxi/X
 oiLSHqHiaazMFUbe1XdkCHGzini0j5onsi9ls=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=uFc+KeHVvPb55BWADcWbagsPR+XJZj6DCQVbpAY2/9o=;
 b=f9eg5H0Ta1qPyUNTMA82K0Etzho8/1xAdMyhDosygmQM1z5+Z/EpDO53hJCqmNJ04A
 mez0OB/GnEWh/DqQ2AxBHTbGtp4Fo0HhJVfgqDh2sCRTAoEFRvRcRlgNrvKnjhnNVNuB
 pbC/W/w3s2pa522YrXLCJlx0mKYn3DTyFXGKnOweTLNACf0SxaCvSD7hQ5+7xwBnmTNM
 iUSKujNfYDcKw5th85aNNx4f1aY6REC/aN/YJjlulIDYv4kviUqwXnTZaPBtrbu9yA2z
 I8mM4AZPotttVgjBJc+xbKTdFpbiGBQnpJ/XkxxjBnECg3KpAG2O8HRBjwp4DEW/VO3I
 QvXw==
X-Gm-Message-State: APjAAAWyI9wpin7L7+KnjSKyNcRgntzby4VzNPvY/zYqJs/b8m4etS6G
 QXyYXZe92wwYbQ+EEeZnsll7sijMf9k=
X-Google-Smtp-Source: APXvYqwc+09ApQi9UmP4qy+1CWQmgzXIQ/+xYb9N39bCeBjl5th2tCFGIFR3qtSIry2ci25tyd/fDA==
X-Received: by 2002:a17:902:b210:: with SMTP id
 t16mr45346253plr.65.1578127102639; 
 Sat, 04 Jan 2020 00:38:22 -0800 (PST)
Received: from localhost.localdomain ([49.206.201.128])
 by smtp.gmail.com with ESMTPSA id z4sm70201623pfn.42.2020.01.04.00.38.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 04 Jan 2020 00:38:22 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH v6 1/6] Makefile: Add rockchip image type
Date: Sat,  4 Jan 2020 14:08:01 +0530
Message-Id: <20200104083806.3930-2-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20200104083806.3930-1-jagan@amarulasolutions.com>
References: <20200104083806.3930-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200104_003823_622479_768B45BE 
X-CRM114-Status: UNSURE (   8.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-rockchip@lists.infradead.org, u-boot@lists.denx.de,
 "Matwey V . Kornilov" <matwey.kornilov@gmail.com>,
 Jagan Teki <jagan@amarulasolutions.com>, linux-amarula@amarulasolutions.com,
 Akash Gajjar <akash@openedev.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Add rockchip image type support. right now the image
type marked with rksd, So create image type variable
with required image type like rksd or rkspi.

Cc: Kever Yang <kever.yang@rock-chips.com>
Cc: Matwey V. Kornilov <matwey.kornilov@gmail.com>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Reviewed-by: Kever Yang <kever.yang@rock-chips.com>
---
 Makefile | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/Makefile b/Makefile
index e20a206239..9998d238f3 100644
--- a/Makefile
+++ b/Makefile
@@ -1374,7 +1374,15 @@ u-boot-with-spl.bin: $(SPL_IMAGE) $(SPL_PAYLOAD) FORCE
 	$(call if_changed,pad_cat)
 
 ifeq ($(CONFIG_ARCH_ROCKCHIP),y)
-MKIMAGEFLAGS_u-boot-tpl.img = -n $(CONFIG_SYS_SOC) -T rksd
+
+# rockchip image type
+ifeq ($(CONFIG_SPI_FLASH_SUPPORT),y)
+ROCKCHIP_IMG_TYPE := rkspi
+else
+ROCKCHIP_IMG_TYPE := rksd
+endif
+
+MKIMAGEFLAGS_u-boot-tpl.img = -n $(CONFIG_SYS_SOC) -T $(ROCKCHIP_IMG_TYPE)
 tpl/u-boot-tpl.img: tpl/u-boot-tpl.bin FORCE
 	$(call if_changed,mkimage)
 idbloader.img: tpl/u-boot-tpl.img spl/u-boot-spl.bin FORCE
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
