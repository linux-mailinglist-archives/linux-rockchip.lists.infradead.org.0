Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCD561334B
	for <lists+linux-rockchip@lfdr.de>; Fri,  3 May 2019 19:48:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=h715QQh32bjiSXqn/UaC5YNwFgNJAybHesUAY8xWWrI=; b=uTeSI/cY8IRuqA
	YqBZxnZQ4rvdez8IGKvqE/Y176nZMzdOFWxK+bfgIwrm1yp/vXOz1COL+lGwlp8iCzilX05kSPJn7
	QX4mipyz5WJZ8PRw72GJP7/n7MvZiB1YkPWZ3376d5BKyTwXzVSNgbwk/F3gpLLLW+6G2JStvlND9
	+IeCV7OmXkReN3FmZKD3//Ih192xqQsKMHeFdaw/p/Xi+Mcs56gEEqO0e5pPS0ZsY/rdZVoslqmi4
	VE6unAyQvOiB3zjR5dh/spRXvIvfKftY3QVL/lxRUAesFmKYiimRGhi6ZfkA1WEzFgxXtZE1qShXN
	xWXgjzWR4I6tcHZmSE8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMcI2-0005HM-WF; Fri, 03 May 2019 17:48:07 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMcHz-0005Gq-6V
 for linux-rockchip@lists.infradead.org; Fri, 03 May 2019 17:48:04 +0000
Received: by mail-pl1-x641.google.com with SMTP id ck18so3036673plb.1
 for <linux-rockchip@lists.infradead.org>; Fri, 03 May 2019 10:48:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Hcu8K+zWlIGVcO7HslnrIVULTnaD0CZgK/YRsSv5h7E=;
 b=F6lrwkUObP5QsxdWxxiNyUKTwB/nEyF4/2ZuY81qbcsiroixxS1vfHPuhgJCG74vnG
 ZpQu2+yRS0RB44jtMo71Bq3M3BbxP6cxxmSZI8bQ/c/OgD/1tMxXKzfjUhB2JqKaAn/l
 NG8WILFO9GWdfOIoO5C2INyNQwVBGc70wO/D0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Hcu8K+zWlIGVcO7HslnrIVULTnaD0CZgK/YRsSv5h7E=;
 b=EVOtirS9wI4Y1V7Fnu0CNvNHARe3Jje8bDPAmaIAe0ylsA38ZYgLj9WSYzHm+q/Zhs
 65fj5yJ/pAzZiGfx+oA4CRVSPpUiqJV7gqvmLMQeh1gXAId5nvqucXy7joJa+0GwXOyU
 xfMah+Jnhn55wtiolD4UCMoS/zAgHK5JtqyQpQEjpAbGA7oWdS7SEvsGij2uUFNqEgZ7
 ggJMIKNP9g0uyFXU8KkBYpqVmMUZNsQiTVLmT+3BEoAjPdd7wtj2vwmwSQTftsW3Yqpd
 aEO9pU5jaxd2KsBzA6PDoetk5Qg+HghFoR4arkuwvWy/0TyahoBW/CAytixligX0hafS
 hjxA==
X-Gm-Message-State: APjAAAXrkASgbgcH1CqGJQyJVq3Om8RRIXykHexPFiPANz9xsqFfGrvk
 Ow8VD+EsmmIVb0bEpPpMxIk8rg==
X-Google-Smtp-Source: APXvYqwUHs8vMvaru9Cwe1tZkDsvr7dVSbNkuW/Q+VhSh7UtsmWhvEG5ztlrguWI+8XxxHBhnHpwGA==
X-Received: by 2002:a17:902:7085:: with SMTP id
 z5mr12285610plk.78.1556905682002; 
 Fri, 03 May 2019 10:48:02 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com
 ([2620:15c:202:1:24fa:e766:52c9:e3b2])
 by smtp.gmail.com with ESMTPSA id v15sm3588446pff.105.2019.05.03.10.48.00
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 03 May 2019 10:48:01 -0700 (PDT)
From: Douglas Anderson <dianders@chromium.org>
To: Kees Cook <keescook@chromium.org>,
	Anton Vorontsov <anton@enomsg.org>
Subject: [PATCH] pstore/ram: Improve backward compatibility with older
 Chromebooks
Date: Fri,  3 May 2019 10:47:30 -0700
Message-Id: <20190503174730.245762-1-dianders@chromium.org>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_104803_237964_64A775D5 
X-CRM114-Status: GOOD (  13.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Douglas Anderson <dianders@chromium.org>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, mka@chromium.org,
 Colin Cross <ccross@android.com>, groeck@chromium.org, jwerner@chromium.org
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

 fs/pstore/ram.c | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/fs/pstore/ram.c b/fs/pstore/ram.c
index c5c685589e36..8df3bfa2837f 100644
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
@@ -703,6 +704,23 @@ static int ramoops_parse_dt(struct platform_device *pdev,
 
 #undef parse_size
 
+	/*
+	 * Some old Chromebooks relied on the kernel setting the console_size
+	 * and pmsg_size to the record size since that's what the downstream
+	 * kernel did.  These same Chromebooks had "ramoops" straight under
+	 * the root node which isn't according to the upstream bindings.  Let's
+	 * make those old Chromebooks work by detecting this and mimicing the
+	 * expected behavior.
+	 */
+	parent_node = of_get_parent(of_node);
+	if (of_node_is_root(parent_node) &&
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
