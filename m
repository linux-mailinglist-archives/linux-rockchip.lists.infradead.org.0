Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AB52A5994
	for <lists+linux-rockchip@lfdr.de>; Mon,  2 Sep 2019 16:41:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4uBrSjTFJV3rDzlfh/iM4EQDIFSX0vQSyNe+bC2+ZF0=; b=bBYR1Rcve7J1zO
	6aL53ThpcOLq9x8nh0HZefNqojPTefZrCofxNG5rrYkqcX4TcZISiN1qLBf8RPhJ7rwxgMuoziwIB
	gnXQZ2oPMXfPVvRUXMvdJYDHE5khwJwCgfS8WhpZl1quqC8+NeW4Zp7acZVyvYuvRhYn55NUi+Y64
	ABXSHrxsOXxuNnxl8jx6LTnt+1uWJH6hLum+aTHyXEkhIZx4wZBxj5xWL/XmMjSDGDnUmtDGrooE+
	7gHBrB8o8JNWRITnnMujMt2kXYk94f0LvBDb18vHgeVRM+yuAVVYitfP5lwfz4hJxspVb7xEN6h7w
	OVZgbk1cjuFrR5yoXwZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4nVt-0006eq-U5; Mon, 02 Sep 2019 14:41:02 +0000
Received: from antares.kleine-koenig.org ([94.130.110.236])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4nVj-0006XM-78; Mon, 02 Sep 2019 14:40:52 +0000
Received: by antares.kleine-koenig.org (Postfix, from userid 1000)
 id 007B0792C0D; Mon,  2 Sep 2019 16:40:45 +0200 (CEST)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
To: Thierry Reding <thierry.reding@gmail.com>, Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH] pwm: rockchip: set polarity unconditionally in .get_state()
Date: Mon,  2 Sep 2019 16:39:41 +0200
Message-Id: <20190902143941.10631-1-uwe@kleine-koenig.org>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_074051_409359_BBF3AE3C 
X-CRM114-Status: UNSURE (   8.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [94.130.110.236 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-pwm@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

RG9uJ3QgcmVseSBvbiAqc3RhdGUgYmVpbmcgemVybyBpbml0aWFsaXplZCBhbmQgUFdNX1BPTEFS
SVRZX05PUk1BTApiZWluZyB6ZXJvLiBTbyBhbHdheXMgYXNzaWduIC5wb2xhcml0eS4KClNpZ25l
ZC1vZmYtYnk6IFV3ZSBLbGVpbmUtS8O2bmlnIDx1d2VAa2xlaW5lLWtvZW5pZy5vcmc+Ci0tLQog
ZHJpdmVycy9wd20vcHdtLXJvY2tjaGlwLmMgfCA4ICsrKystLS0tCiAxIGZpbGUgY2hhbmdlZCwg
NCBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvcHdt
L3B3bS1yb2NrY2hpcC5jIGIvZHJpdmVycy9wd20vcHdtLXJvY2tjaGlwLmMKaW5kZXggNTFiOTZj
YjdkZDI1Li44ZWIyZGI1OTc0MWQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvcHdtL3B3bS1yb2NrY2hp
cC5jCisrKyBiL2RyaXZlcnMvcHdtL3B3bS1yb2NrY2hpcC5jCkBAIC05MCwxMCArOTAsMTAgQEAg
c3RhdGljIHZvaWQgcm9ja2NoaXBfcHdtX2dldF9zdGF0ZShzdHJ1Y3QgcHdtX2NoaXAgKmNoaXAs
CiAJCXN0YXRlLT5lbmFibGVkID0gKCh2YWwgJiBlbmFibGVfY29uZikgPT0gZW5hYmxlX2NvbmYp
ID8KIAkJCQkgdHJ1ZSA6IGZhbHNlOwogCi0JaWYgKHBjLT5kYXRhLT5zdXBwb3J0c19wb2xhcml0
eSkgewotCQlpZiAoISh2YWwgJiBQV01fRFVUWV9QT1NJVElWRSkpCi0JCQlzdGF0ZS0+cG9sYXJp
dHkgPSBQV01fUE9MQVJJVFlfSU5WRVJTRUQ7Ci0JfQorCWlmIChwYy0+ZGF0YS0+c3VwcG9ydHNf
cG9sYXJpdHkgJiYgISh2YWwgJiBQV01fRFVUWV9QT1NJVElWRSkpCisJCXN0YXRlLT5wb2xhcml0
eSA9IFBXTV9QT0xBUklUWV9JTlZFUlNFRDsKKwllbHNlCisJCXN0YXRlLT5wb2xhcml0eSA9IFBX
TV9QT0xBUklUWV9OT1JNQUw7CiAKIAljbGtfZGlzYWJsZShwYy0+cGNsayk7CiB9Ci0tIAoyLjIz
LjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==
