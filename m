Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 734C7146AEA
	for <lists+linux-rockchip@lfdr.de>; Thu, 23 Jan 2020 15:12:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pSW0NQe3aMWOXXI79w68J/9pMHkBtWSi0+d4nfR7dKI=; b=G5ezBq83R3Voob
	z4BIArT6k/mVG9wHT/9IFo8hdti6aIh21XnsUcAAB/r/FqpoHPuYsgmOjIhhjwCCKFZE6aYwUhtbE
	qv+k9ZWGwiVXcKm7K7YYwwMxB8iczrXJ98ccn7O88yDP+FalsrT5zalMjyqar3iAP+b4zVsr/1gfm
	TBGSrZfVC9APVKdZZspI8C1IcJ4/OAfEqaLs+FdCGkHYCbJGxERe8SKyzA2GJbeZdvWj3hzGd5pok
	36SqbotZ65ltQ5R3xVdYwfWBUwXEQti2hdkuoOQ7ZZkXvesC5MtTIxOPQMiEz7EuIvLHyimYfvUBf
	fGwFl2QtmGY2pwjClslQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iudE4-00022V-Kt; Thu, 23 Jan 2020 14:12:52 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iudE1-0001zk-FN
 for linux-rockchip@lists.infradead.org; Thu, 23 Jan 2020 14:12:50 +0000
Received: by mail-pj1-x1044.google.com with SMTP id bg7so1358212pjb.5
 for <linux-rockchip@lists.infradead.org>; Thu, 23 Jan 2020 06:12:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=0t9Yc8oCapK/pmXczwfOQfE1sOlvTfclcIrreLGQ2uU=;
 b=Ch6/5a81c2oTFai0yo5OkKBSmxnGiiinzWztEnvuM5HpaJd0vgjbjUml7edp/a9YTm
 hThBXDjhDXTmtZlo4LbCob3aJayxhCTXzOLByocQYeLwWZY+XUDcuCvf/bCbMRH+3JWE
 sjf4MyqDE7MFmYCTMkRPMG7qsiihIO9uMfFnM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0t9Yc8oCapK/pmXczwfOQfE1sOlvTfclcIrreLGQ2uU=;
 b=o4rlD8RxFHGdn3hX3yABS6wmeyQqU8cA/E4ozEGKNguk80r77g0YG9i+YTK1DeMfj4
 LV4KwM91rSnk2Dw7HiXOqfP4EH4FiaKApxhOATxk1qBD69Cp3h7aU5mwgeySx7lXloV4
 /1eJ3CMM+VrPmQupTwSH7zxF9TPBLZY4wTDvQCkdJhruG1hz+SrPwNsZr5CjjPVSLNk+
 uBXcMiuqdMnXMLz3Dr9V4OXwcYIObm6BNv/ryUrE8cGaOjG04LPtvxhCdYgtyziBfKQr
 BMUO0dLNYSgAK6dL6p0fXaB9g0vmMHd4Auvd/eAqTaRKioLhzORpR9c85rQu7TD6McWT
 d90A==
X-Gm-Message-State: APjAAAVAqM7938HF685FAzPf3H3jJ05dTUG70GcOLAD7oYZZKCuvOrT6
 S16snXR59AT4MbEHIKOkbnrX2w==
X-Google-Smtp-Source: APXvYqyTOFVFCdtf/jmqxERjXwlSNBnGeAQvccMws3AtzLmxOziCMrvtSmbaP+wqNHYZ3GtPLwAmKQ==
X-Received: by 2002:a17:902:708c:: with SMTP id
 z12mr15907896plk.15.1579788768767; 
 Thu, 23 Jan 2020 06:12:48 -0800 (PST)
Received: from localhost.localdomain ([49.206.202.109])
 by smtp.gmail.com with ESMTPSA id o6sm3136392pgg.37.2020.01.23.06.12.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 23 Jan 2020 06:12:48 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH 4/4] rk3288: vyasa: Add console settings
Date: Thu, 23 Jan 2020 19:42:22 +0530
Message-Id: <20200123141222.486-4-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20200123141222.486-1-jagan@amarulasolutions.com>
References: <20200123141222.486-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_061249_534944_4B76D911 
X-CRM114-Status: UNSURE (   8.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: u-boot@lists.denx.de, Michael Trimarchi <michael@amarulasolutions.com>,
 linux-amarula@amarulasolutions.com, Jagan Teki <jagan@amarulasolutions.com>,
 linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Add console settings like stdin, stdout and stderr as
cros-ec-keyb and vidconsole respectively for Vyasa Rk3288
board.

This would certainly help to detect the attached video
devices (like HDMI) and print the console message on display.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 include/configs/vyasa-rk3288.h | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/include/configs/vyasa-rk3288.h b/include/configs/vyasa-rk3288.h
index 3574a3b5a5..e31dc77720 100644
--- a/include/configs/vyasa-rk3288.h
+++ b/include/configs/vyasa-rk3288.h
@@ -8,7 +8,11 @@
 #ifndef __CONFIG_H
 #define __CONFIG_H
 
-#define ROCKCHIP_DEVICE_SETTINGS
+#define ROCKCHIP_DEVICE_SETTINGS \
+		"stdin=serial,cros-ec-keyb\0" \
+		"stdout=serial,vidconsole\0" \
+		"stderr=serial,vidconsole\0"
+
 #include <configs/rk3288_common.h>
 
 #undef BOOT_TARGET_DEVICES
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
