Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EA0B19329F
	for <lists+linux-rockchip@lfdr.de>; Wed, 25 Mar 2020 22:27:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EI7IgaXcCgDAvi+Xbwn0AEVi8nYt/Efg5QVyUIobPF4=; b=iM16ZrndEET5+z
	BROtNj+qNh1RAljeAWuJKnkU3FZoMIMKPWLc4g2NTP4ihu5oT70KvH+coswlnAQBijIhqwewbZWlB
	dc/OugRRgnTZ2PO0H7qhI0CEuwMCeOYlIG4Bsv5rXBsRlPSoh7ccHD8FpJmUJc03L42PEbrkADWFO
	FQx6QFHCFvH2inB9zxFlIWgeHv6o/ffUhD91hXODB+m96vO5SqqqmvrwcZA6mnRohttM/JphPJdRl
	2dTAzwhvPjqhGmReP/RUOqIrerJDnzXMXm/UjH+5gZa+Hi17iWodKX8oQReLdWlqHng+aR9YbEGB7
	RODKIK+4uog0xBvU0HBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHDYY-000412-Fb; Wed, 25 Mar 2020 21:27:22 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHDYU-0003zL-Cc
 for linux-rockchip@lists.infradead.org; Wed, 25 Mar 2020 21:27:19 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: dafna) with ESMTPSA id 8C2D2293A25
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: linux-media@vger.kernel.org, dafna.hirschfeld@collabora.com,
 helen.koike@collabora.com, ezequiel@collabora.com, hverkuil@xs4all.nl,
 kernel@collabora.com, dafna3@gmail.com, sakari.ailus@linux.intel.com,
 linux-rockchip@lists.infradead.org, mchehab@kernel.org,
 laurent.pinchart@ideasonboard.com
Subject: [PATCH 1/2] media: media.h: Add a pad flag MEDIA_PAD_FL_METADATA
Date: Wed, 25 Mar 2020 22:27:03 +0100
Message-Id: <20200325212704.29862-2-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200325212704.29862-1-dafna.hirschfeld@collabora.com>
References: <20200325212704.29862-1-dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_142718_562031_CD35284E 
X-CRM114-Status: UNSURE (   7.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Add a flag to the flags field of 'struct media_pad_desc'
that indicates that the data transmitted by the pad is
metadata.

Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
---
 Documentation/media/uapi/mediactl/media-types.rst | 4 ++++
 include/uapi/linux/media.h                        | 1 +
 2 files changed, 5 insertions(+)

diff --git a/Documentation/media/uapi/mediactl/media-types.rst b/Documentation/media/uapi/mediactl/media-types.rst
index 3af6a414b501..4ca902478971 100644
--- a/Documentation/media/uapi/mediactl/media-types.rst
+++ b/Documentation/media/uapi/mediactl/media-types.rst
@@ -361,6 +361,7 @@ Types and flags used to represent the media graph elements
 .. _MEDIA-PAD-FL-SINK:
 .. _MEDIA-PAD-FL-SOURCE:
 .. _MEDIA-PAD-FL-MUST-CONNECT:
+.. _MEDIA-PAD-FL-METADATA:
 
 .. flat-table:: Media pad flags
     :header-rows:  0
@@ -381,6 +382,9 @@ Types and flags used to represent the media graph elements
 	  configuration dependent) for the pad to need enabled links even
 	  when this flag isn't set; the absence of the flag doesn't imply
 	  there is none.
+    *  -  ``MEDIA_PAD_FL_METADATA``
+       -  This flag indicates that the data transmitted by the pad is of
+          type metadata.
 
 
 One and only one of ``MEDIA_PAD_FL_SINK`` and ``MEDIA_PAD_FL_SOURCE``
diff --git a/include/uapi/linux/media.h b/include/uapi/linux/media.h
index 383ac7b7d8f0..ae37226eb5c9 100644
--- a/include/uapi/linux/media.h
+++ b/include/uapi/linux/media.h
@@ -210,6 +210,7 @@ struct media_entity_desc {
 #define MEDIA_PAD_FL_SINK			(1 << 0)
 #define MEDIA_PAD_FL_SOURCE			(1 << 1)
 #define MEDIA_PAD_FL_MUST_CONNECT		(1 << 2)
+#define MEDIA_PAD_FL_METADATA			(1 << 3)
 
 struct media_pad_desc {
 	__u32 entity;		/* entity ID */
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
