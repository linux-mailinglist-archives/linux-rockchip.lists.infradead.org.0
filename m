Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F32AA3279F
	for <lists+linux-rockchip@lfdr.de>; Mon,  3 Jun 2019 06:33:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gS0aiLSypzqKueY9Tok40GFPI0ZaRFVij+ZQvMvQgxk=; b=JGJCATlWZj90C6
	4ikyUmsMK7YAAK61++JGfxZ0jT1mFyaD1a9BqA52/cPl5BGku6G1MKOKXNl0e2wCtbYC3xOt2h2nM
	zk2PRVQHfOAKX4/lTAhm09LpH4UR1fn5H0kNUvPl47m4EKjgY3RRmLQ4aI25EYH36REQI4gr8AjNJ
	/n9l4+/oITDcL3x7NpSNDT4b64ajGIi55/4Lr+IyqhDBPPBePZ9jqdjCQaGCJwNHPZZd1BNMevp7U
	k+h/oAwX3kO8jMzzuuUoJ3Xwl1Ao8YeuSzDPFAD1YOOnUWxu83Ocdiw8lFWRXtJByFSrmYM6+9Pr9
	68FG68cMMPtDwSHmIftw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXef6-0002DE-M4; Mon, 03 Jun 2019 04:33:32 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXef1-0002A4-Uc
 for linux-rockchip@lists.infradead.org; Mon, 03 Jun 2019 04:33:30 +0000
Received: by mail-pf1-x442.google.com with SMTP id d126so9841346pfd.2
 for <linux-rockchip@lists.infradead.org>; Sun, 02 Jun 2019 21:33:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=2Kwlb/5SiHsOyNhbzKStBJCJEYsXKEdQeHEGccB6G4g=;
 b=P6sxjq2jhBsuLFH1QG7yv4BIJAceIkzfv21qakj+ocuLcqfruJgk8Nknotu7hXPdaC
 EQcrUw8uZQZtGwzDPMO+UKmcFiYcFtWe24y7eP0FnYNYU9Oeb7vNiFUhp8MUd4YT8VaQ
 MaqS3sJXoC3FphFKT1F25QPEx3fflQgHYxwRo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=2Kwlb/5SiHsOyNhbzKStBJCJEYsXKEdQeHEGccB6G4g=;
 b=JYpt4aQGYmfnnWLfArSfk6qkxMECAKVOpYvmcdnPAHrxbNjPCOQL1G94ZaT/uTjegw
 A1VWGqdN7gRB7oQctoU+ccWFwvUbCha0nnPZIX4OfOCX9NDxiEd+kCZDeQEpubh/0a48
 vNcOQSMiO1zlidv72nn+1V8h75ht4niBRtQjflBQT5tBteoDjkWLFm+BSA5/RAl7K8I4
 fVyUCDR7EiwHKWCjmq+0V8UV06cjPPhporWeGzFoBG6lkHaQsNyZan5OPWCWApGbpO/s
 QcKytqXXw6CG0rTrDQssYRIe8lXZkcM/1AfLPATyNArkw8DzzU8vGtVVhBa6r6cUgDM1
 IF/A==
X-Gm-Message-State: APjAAAXfUUatJsA8pJTxiOygFLEh0kq10rKo7x6PkDKREtWwIMuX76fe
 RD1GsE/pcEZXcnzimpCjZtnZ9w==
X-Google-Smtp-Source: APXvYqwnwggViSS4JCbJAT4hNQZ/yjlwEWzdESELTSgpREOdMiTdp8VpKcMTR6NQXz/c1G1TpHLexA==
X-Received: by 2002:a63:18e:: with SMTP id 136mr25981553pgb.277.1559536407123; 
 Sun, 02 Jun 2019 21:33:27 -0700 (PDT)
Received: from localhost ([2401:fa00:1:b:e688:dfd2:a1a7:2956])
 by smtp.gmail.com with ESMTPSA id h12sm2623108pfr.38.2019.06.02.21.33.22
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 02 Jun 2019 21:33:26 -0700 (PDT)
From: Cheng-Yi Chiang <cychiang@chromium.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 1/7] video: add HDMI state notifier support
Date: Mon,  3 Jun 2019 12:32:45 +0800
Message-Id: <20190603043251.226549-2-cychiang@chromium.org>
X-Mailer: git-send-email 2.22.0.rc1.257.g3120a18244-goog
In-Reply-To: <20190603043251.226549-1-cychiang@chromium.org>
References: <20190603043251.226549-1-cychiang@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190602_213328_029355_C36C7219 
X-CRM114-Status: GOOD (  22.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.21
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
Cc: alsa-devel@alsa-project.org, Heiko Stuebner <heiko@sntech.de>,
 David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org,
 Liam Girdwood <lgirdwood@gmail.com>, Hans Verkuil <hverkuil@xs4all.nl>,
 Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Cheng-Yi Chiang <cychiang@chromium.org>, Takashi Iwai <tiwai@suse.com>,
 linux-rockchip@lists.infradead.org, Hans Verkuil <hans.verkuil@cisco.com>,
 dgreid@chromium.org, linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 tzungbi@chromium.org, Philipp Zabel <p.zabel@pengutronix.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Russell King <rmk+kernel@armlinux.org.uk>, Rob Herring <robh+dt@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>, linux-arm-kernel@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, dianders@chromium.org,
 Mark Brown <broonie@kernel.org>, Daniel Vetter <daniel@ffwll.ch>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

From: Hans Verkuil <hans.verkuil@cisco.com>

Add support for HDMI hotplug and EDID notifiers, which is used to convey
information from HDMI drivers to their CEC and audio counterparts.

Based on an earlier version from Russell King:

https://patchwork.kernel.org/patch/9277043/

The hdmi_notifier is a reference counted object containing the HDMI state
of an HDMI device.

When a new notifier is registered the current state will be reported to
that notifier at registration time.

Based on Hans Verkuil's patch:

https://patchwork.kernel.org/patch/9472521/

Modified by Cheng-Yi Chiang:
 - Add a section in MAINTAINER.
 - Changes connected and has_eld to bitfield of unsigned int.
 - Other minor fixes to pass checkpatch.pl --strict checks.

Signed-off-by: Hans Verkuil <hans.verkuil@cisco.com>
Acked-by: Philipp Zabel <p.zabel@pengutronix.de>
Signed-off-by: Cheng-Yi Chiang <cychiang@chromium.org>
---
The original patch is at
https://lore.kernel.org/linux-arm-kernel/20161213150813.37966-2-hverkuil@xs4all.nl

 MAINTAINERS                   |   6 ++
 drivers/video/Kconfig         |   3 +
 drivers/video/Makefile        |   1 +
 drivers/video/hdmi-notifier.c | 145 ++++++++++++++++++++++++++++++++++
 include/linux/hdmi-notifier.h | 112 ++++++++++++++++++++++++++
 5 files changed, 267 insertions(+)
 create mode 100644 drivers/video/hdmi-notifier.c
 create mode 100644 include/linux/hdmi-notifier.h

diff --git a/MAINTAINERS b/MAINTAINERS
index 5cfbea4ce575..ffb7376f9509 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -16676,6 +16676,12 @@ W:	https://linuxtv.org
 S:	Maintained
 F:	drivers/media/platform/vicodec/*
 
+VIDEO FRAMEWORK
+M:	Hans Verkuil <hverkuil@xs4all.nl>
+L:	linux-media@vger.kernel.org
+F:	drivers/video/hdmi-notifier.*
+S:	Maintained
+
 VIDEO MULTIPLEXER DRIVER
 M:	Philipp Zabel <p.zabel@pengutronix.de>
 L:	linux-media@vger.kernel.org
diff --git a/drivers/video/Kconfig b/drivers/video/Kconfig
index 83d3d271ca15..000ba9bc0ae7 100644
--- a/drivers/video/Kconfig
+++ b/drivers/video/Kconfig
@@ -34,6 +34,9 @@ config VIDEOMODE_HELPERS
 config HDMI
 	bool
 
+config HDMI_NOTIFIERS
+	bool
+
 endif # HAS_IOMEM
 
 if VT
diff --git a/drivers/video/Makefile b/drivers/video/Makefile
index df7650adede9..eff4736102ca 100644
--- a/drivers/video/Makefile
+++ b/drivers/video/Makefile
@@ -1,6 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0
 obj-$(CONFIG_VGASTATE)            += vgastate.o
 obj-$(CONFIG_HDMI)                += hdmi.o
+obj-$(CONFIG_HDMI_NOTIFIERS)      += hdmi-notifier.o
 
 obj-$(CONFIG_VT)		  += console/
 obj-$(CONFIG_FB_STI)		  += console/
diff --git a/drivers/video/hdmi-notifier.c b/drivers/video/hdmi-notifier.c
new file mode 100644
index 000000000000..d1eedf661648
--- /dev/null
+++ b/drivers/video/hdmi-notifier.c
@@ -0,0 +1,145 @@
+// SPDX-License-Identifier: GPL-2.0
+/* hdmi-notifier.c - notify interested parties of (dis)connect and EDID
+ * events
+ *
+ * Copyright 2016 Russell King <rmk+kernel@arm.linux.org.uk>
+ * Copyright 2016 Cisco Systems, Inc. and/or its affiliates.
+ * All rights reserved.
+ */
+
+#include <linux/export.h>
+#include <linux/hdmi-notifier.h>
+#include <linux/string.h>
+#include <linux/slab.h>
+#include <linux/list.h>
+
+static LIST_HEAD(hdmi_notifiers);
+static DEFINE_MUTEX(hdmi_notifiers_lock);
+
+struct hdmi_notifier *hdmi_notifier_get(struct device *dev)
+{
+	struct hdmi_notifier *n;
+
+	mutex_lock(&hdmi_notifiers_lock);
+	list_for_each_entry(n, &hdmi_notifiers, head) {
+		if (n->dev == dev) {
+			mutex_unlock(&hdmi_notifiers_lock);
+			kref_get(&n->kref);
+			return n;
+		}
+	}
+	n = kzalloc(sizeof(*n), GFP_KERNEL);
+	if (!n)
+		goto unlock;
+	n->dev = dev;
+	mutex_init(&n->lock);
+	BLOCKING_INIT_NOTIFIER_HEAD(&n->notifiers);
+	kref_init(&n->kref);
+	list_add_tail(&n->head, &hdmi_notifiers);
+unlock:
+	mutex_unlock(&hdmi_notifiers_lock);
+	return n;
+}
+EXPORT_SYMBOL_GPL(hdmi_notifier_get);
+
+static void hdmi_notifier_release(struct kref *kref)
+{
+	struct hdmi_notifier *n =
+		container_of(kref, struct hdmi_notifier, kref);
+
+	mutex_lock(&hdmi_notifiers_lock);
+	list_del(&n->head);
+	mutex_unlock(&hdmi_notifiers_lock);
+	kfree(n->edid);
+	kfree(n);
+}
+
+void hdmi_notifier_put(struct hdmi_notifier *n)
+{
+	kref_put(&n->kref, hdmi_notifier_release);
+}
+EXPORT_SYMBOL_GPL(hdmi_notifier_put);
+
+int hdmi_notifier_register(struct hdmi_notifier *n, struct notifier_block *nb)
+{
+	int ret = blocking_notifier_chain_register(&n->notifiers, nb);
+
+	if (ret)
+		return ret;
+	kref_get(&n->kref);
+	mutex_lock(&n->lock);
+	if (n->connected) {
+		blocking_notifier_call_chain(&n->notifiers, HDMI_CONNECTED, n);
+		if (n->edid_size)
+			blocking_notifier_call_chain(&n->notifiers,
+						     HDMI_NEW_EDID, n);
+		if (n->has_eld)
+			blocking_notifier_call_chain(&n->notifiers,
+						     HDMI_NEW_ELD, n);
+	}
+	mutex_unlock(&n->lock);
+	return 0;
+}
+EXPORT_SYMBOL_GPL(hdmi_notifier_register);
+
+int hdmi_notifier_unregister(struct hdmi_notifier *n, struct notifier_block *nb)
+{
+	int ret = blocking_notifier_chain_unregister(&n->notifiers, nb);
+
+	if (ret == 0)
+		hdmi_notifier_put(n);
+	return ret;
+}
+EXPORT_SYMBOL_GPL(hdmi_notifier_unregister);
+
+void hdmi_event_connect(struct hdmi_notifier *n)
+{
+	mutex_lock(&n->lock);
+	n->connected = true;
+	blocking_notifier_call_chain(&n->notifiers, HDMI_CONNECTED, n);
+	mutex_unlock(&n->lock);
+}
+EXPORT_SYMBOL_GPL(hdmi_event_connect);
+
+void hdmi_event_disconnect(struct hdmi_notifier *n)
+{
+	mutex_lock(&n->lock);
+	n->connected = false;
+	n->has_eld = false;
+	n->edid_size = 0;
+	blocking_notifier_call_chain(&n->notifiers, HDMI_DISCONNECTED, n);
+	mutex_unlock(&n->lock);
+}
+EXPORT_SYMBOL_GPL(hdmi_event_disconnect);
+
+int hdmi_event_new_edid(struct hdmi_notifier *n, const void *edid, size_t size)
+{
+	mutex_lock(&n->lock);
+	if (n->edid_allocated_size < size) {
+		void *p = kmalloc(size, GFP_KERNEL);
+
+		if (!p) {
+			mutex_unlock(&n->lock);
+			return -ENOMEM;
+		}
+		kfree(n->edid);
+		n->edid = p;
+		n->edid_allocated_size = size;
+	}
+	memcpy(n->edid, edid, size);
+	n->edid_size = size;
+	blocking_notifier_call_chain(&n->notifiers, HDMI_NEW_EDID, n);
+	mutex_unlock(&n->lock);
+	return 0;
+}
+EXPORT_SYMBOL_GPL(hdmi_event_new_edid);
+
+void hdmi_event_new_eld(struct hdmi_notifier *n, const u8 eld[128])
+{
+	mutex_lock(&n->lock);
+	memcpy(n->eld, eld, sizeof(n->eld));
+	n->has_eld = true;
+	blocking_notifier_call_chain(&n->notifiers, HDMI_NEW_ELD, n);
+	mutex_unlock(&n->lock);
+}
+EXPORT_SYMBOL_GPL(hdmi_event_new_eld);
diff --git a/include/linux/hdmi-notifier.h b/include/linux/hdmi-notifier.h
new file mode 100644
index 000000000000..c8f35110e3e3
--- /dev/null
+++ b/include/linux/hdmi-notifier.h
@@ -0,0 +1,112 @@
+/* SPDX-License-Identifier: GPL-2.0
+ * hdmi-notifier.h - notify interested parties of (dis)connect and EDID
+ * events
+ *
+ * Copyright 2016 Russell King <rmk+kernel@arm.linux.org.uk>
+ * Copyright 2016 Cisco Systems, Inc. and/or its affiliates.
+ * All rights reserved.
+ */
+
+#ifndef LINUX_HDMI_NOTIFIER_H
+#define LINUX_HDMI_NOTIFIER_H
+
+#include <linux/types.h>
+#include <linux/notifier.h>
+#include <linux/kref.h>
+
+enum {
+	HDMI_CONNECTED,
+	HDMI_DISCONNECTED,
+	HDMI_NEW_EDID,
+	HDMI_NEW_ELD,
+};
+
+struct device;
+
+struct hdmi_notifier {
+	/* Lock to protect callback registration and notification. */
+	struct mutex lock;
+	struct list_head head;
+	struct kref kref;
+	struct blocking_notifier_head notifiers;
+	struct device *dev;
+
+	/* Current state */
+	unsigned int connected : 1;
+	unsigned int has_eld : 1;
+	unsigned char eld[128];
+	void *edid;
+	size_t edid_size;
+	size_t edid_allocated_size;
+};
+
+/**
+ * hdmi_notifier_get - find or create a new hdmi_notifier for the given device.
+ * @dev: device that sends the events.
+ *
+ * If a notifier for device @dev already exists, then increase the refcount
+ * and return that notifier.
+ *
+ * If it doesn't exist, then allocate a new notifier struct and return a
+ * pointer to that new struct.
+ *
+ * Return NULL if the memory could not be allocated.
+ */
+struct hdmi_notifier *hdmi_notifier_get(struct device *dev);
+
+/**
+ * hdmi_notifier_put - decrease refcount and delete when the refcount reaches 0.
+ * @n: notifier
+ */
+void hdmi_notifier_put(struct hdmi_notifier *n);
+
+/**
+ * hdmi_notifier_register - register the notifier with the notifier_block.
+ * @n: the HDMI notifier
+ * @nb: the notifier_block
+ */
+int hdmi_notifier_register(struct hdmi_notifier *n, struct notifier_block *nb);
+
+/**
+ * hdmi_notifier_unregister - unregister the notifier with the notifier_block.
+ * @n: the HDMI notifier
+ * @nb: the notifier_block
+ */
+int hdmi_notifier_unregister(struct hdmi_notifier *n,
+			     struct notifier_block *nb);
+
+/**
+ * hdmi_event_connect - send a connect event.
+ * @n: the HDMI notifier
+ *
+ * Send an HDMI_CONNECTED event to any registered parties.
+ */
+void hdmi_event_connect(struct hdmi_notifier *n);
+
+/**
+ * hdmi_event_disconnect - send a disconnect event.
+ * @n: the HDMI notifier
+ *
+ * Send an HDMI_DISCONNECTED event to any registered parties.
+ */
+void hdmi_event_disconnect(struct hdmi_notifier *n);
+
+/**
+ * hdmi_event_new_edid - send a new EDID event.
+ * @n: the HDMI notifier
+ *
+ * Send an HDMI_NEW_EDID event to any registered parties.
+ * This function will make a copy the EDID so it can return -ENOMEM if
+ * no memory could be allocated.
+ */
+int hdmi_event_new_edid(struct hdmi_notifier *n, const void *edid, size_t size);
+
+/**
+ * hdmi_event_new_eld - send a new ELD event.
+ * @n: the HDMI notifier
+ *
+ * Send an HDMI_NEW_ELD event to any registered parties.
+ */
+void hdmi_event_new_eld(struct hdmi_notifier *n, const u8 eld[128]);
+
+#endif
-- 
2.22.0.rc1.257.g3120a18244-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
