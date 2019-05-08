Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E83F17D7F
	for <lists+linux-rockchip@lfdr.de>; Wed,  8 May 2019 17:49:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=O3Ns4VX/FnHHqdDPigohWPzQbXa6ngHWFkZ0lkKNtGg=; b=H4UpELe8mde+IS
	rMDttS3OUD7Y7B7KLQXGFQsme76rmDF6vawNKTg3RwwPPkxH+al8FX2Yvcr92Op1Wme141Y5oBwwq
	YYqvREiZUzCSp332q9dlhxzW5GqA+8sODdXP1wi74EHnse3/mJFYc6kqx8zZGHDj9GjAlqXexYTP0
	tF+Hgq5ae8x+IMUU8Nm92tXoI3M5KPZf0a0eFPzhqMoDQx+5kVhYB1xOwYGGOzJhwUzF2OZIFEYFg
	+Bbe1RjX/tO5Pqu/2t4N1JJd0RUad4JVNwJPxDb08cNplP9J5r1goqDFUn7yo//YNu4MVTDGZby99
	KwbNNJ0mk/+miXZiaKYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOOoh-0002NH-Us; Wed, 08 May 2019 15:49:11 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOOof-0002Me-3Z
 for linux-rockchip@lists.infradead.org; Wed, 08 May 2019 15:49:10 +0000
Received: by mail-pg1-x543.google.com with SMTP id t187so6177087pgb.13
 for <linux-rockchip@lists.infradead.org>; Wed, 08 May 2019 08:49:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=48PM5wjwHg5QAu3xwuXzBgAZQekQFPxmgJORD2kHJRs=;
 b=HniB7Q85atLr+xF0KXfSp07SsofmrDYFHpaSrRf/D3y7xkRoKwr4rdzgyUqRj26lqg
 uQUGl/OHlceMWux9HEaQFZBdZd2cM4O9qYSGaEKO5Ee79L0jvzoPjOmafsgQyNlg62PW
 5HvZJdfXvIHH2wgUXn7UaBUBUFhje8IdI7zX8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=48PM5wjwHg5QAu3xwuXzBgAZQekQFPxmgJORD2kHJRs=;
 b=SlFvSEEe0LdHQTW8TRky4nqFe9gDjgOpwMM9LWaDEzYw2aJ9oAusX+uImz41Ci0r78
 1ra17exLx5rZxvs5GI1w/nonwCbApJpD/xmAssHk83Mss+hun3TadGeWyvL+CJAJSNGB
 vMMDK9K+0kbL7rAyBiJhJvrChbKi0++N5J7/47eIb3+RUQyNNY6h6hZulRQya4WoUBQL
 Yrgr6SJGLdBRlIKK+kOPqBz9sXAgA9vxae2Dayslb+wD1kDA89d96YJhDjEjlBwP1JPf
 Hcukj8S9sIghgVu8Ge+RPoVcPF/twdVPJfdhunsOF38PIb2bvlPsnSle5MRItuBVeOJB
 29Ag==
X-Gm-Message-State: APjAAAV2a2RURQp6z4vqz5IlFaIkljvydiF88S7N1W7XnWjQ+tIscqqW
 Jv7X/hamxXGJxR4vW9EKdRCLTQ==
X-Google-Smtp-Source: APXvYqyK6aJeIBmRwXhHkF3WLNv5b7LcG+SteylVUiskVBLe8KT0Fs/zXnnoRsGZSoGUPGeRYxh69g==
X-Received: by 2002:a62:56d9:: with SMTP id h86mr40751950pfj.195.1557330548169; 
 Wed, 08 May 2019 08:49:08 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com
 ([2620:15c:202:1:24fa:e766:52c9:e3b2])
 by smtp.gmail.com with ESMTPSA id d186sm11953443pgc.58.2019.05.08.08.49.07
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 08 May 2019 08:49:07 -0700 (PDT)
From: Douglas Anderson <dianders@chromium.org>
To: Kees Cook <keescook@chromium.org>,
	Anton Vorontsov <anton@enomsg.org>
Subject: [PATCH v2] pstore/ram: Improve backward compatibility with older
 Chromebooks
Date: Wed,  8 May 2019 08:48:31 -0700
Message-Id: <20190508154832.241525-1-dianders@chromium.org>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_084909_173891_0A351085 
X-CRM114-Status: GOOD (  14.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Tony Luck <tony.luck@intel.com>, briannorris@chromium.org,
 Douglas Anderson <dianders@chromium.org>, Rob Herring <robh+dt@kernel.org>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 mka@chromium.org, Colin Cross <ccross@android.com>, groeck@chromium.org,
 jwerner@chromium.org, Frank Rowand <frowand.list@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

When you try to run an upstream kernel on an old ARM-based Chromebook
you'll find that console-ramoops doesn't work.

Old ARM-based Chromebooks, before <https://crrev.com/c/439792>
("ramoops: support upstream {console,pmsg,ftrace}-size properties")
used to create a "ramoops" node at the top level that looked like:

/ {
  ramoops {
    compatible = "ramoops";
    reg = <...>;
    record-size = <...>;
    dump-oops;
  };
};

...and these Chromebooks assumed that the downstream kernel would make
console_size / pmsg_size match the record size.  The above ramoops
node was added by the firmware so it's not easy to make any changes.

Let's match the expected behavior, but only for those using the old
backward-compatible way of working where ramoops is right under the
root node.

NOTE: if there are some out-of-tree devices that had ramoops at the
top level, left everything but the record size as 0, and somehow
doesn't want this behavior, we can try to add more conditions here.

Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

Changes in v2:
- s/mimicing/mimicking/ (Brian Norris)
- Slight rewording of the comment (Brian Norris)
- Check name rather than relying on of_node_is_root() (Frank Rowand)

 fs/pstore/ram.c | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/fs/pstore/ram.c b/fs/pstore/ram.c
index c5c685589e36..5195a3a3daec 100644
--- a/fs/pstore/ram.c
+++ b/fs/pstore/ram.c
@@ -669,6 +669,7 @@ static int ramoops_parse_dt(struct platform_device *pdev,
 			    struct ramoops_platform_data *pdata)
 {
 	struct device_node *of_node = pdev->dev.of_node;
+	struct device_node *parent_node;
 	struct resource *res;
 	u32 value;
 	int ret;
@@ -703,6 +704,26 @@ static int ramoops_parse_dt(struct platform_device *pdev,
 
 #undef parse_size
 
+	/*
+	 * Some old Chromebooks relied on the kernel setting the
+	 * console_size and pmsg_size to the record size since that's
+	 * what the downstream kernel did.  These same Chromebooks had
+	 * "ramoops" straight under the root node which isn't
+	 * according to the current upstream bindings (though it was
+	 * arguably acceptable under a prior version of the bindings).
+	 * Let's make those old Chromebooks work by detecting that
+	 * we're not a child of "reserved-memory" and mimicking the
+	 * expected behavior.
+	 */
+	parent_node = of_get_parent(of_node);
+	if (!of_node_name_eq(parent_node, "reserved-memory") &&
+	    !pdata->console_size && !pdata->ftrace_size &&
+	    !pdata->pmsg_size && !pdata->ecc_info.ecc_size) {
+		pdata->console_size = pdata->record_size;
+		pdata->pmsg_size = pdata->record_size;
+	}
+	of_node_put(parent_node);
+
 	return 0;
 }
 
-- 
2.21.0.1020.gf2820cf01a-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
