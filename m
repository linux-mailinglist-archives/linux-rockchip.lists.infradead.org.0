Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E569AD0E6E
	for <lists+linux-rockchip@lfdr.de>; Wed,  9 Oct 2019 14:10:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AENqjseHouq+sglagw9biHlsWCtx0mUc58PHeVc8TwY=; b=s9EcnTzSeX1eXb
	vJQ+y94q3BVs1HcKu+BVOiwKQ0CbR6v7khZJKAVj3oJgzAuWXYheX9OU1266XDPgkz69mOJW78nZe
	0nnaqdlfaXLR52oIvdYb8NvneLGecZCNKKjY+Te9MTGQiWtR5/N7XMHsILJ1T0A/9U48oPBebLdCV
	XLHrMFfC3LnmXjQDqdy57ettkUeAZpYlU3kYI7AzAslYev/3UO7hiFKrt+YcHQBx2lIIS53FakJeN
	oR7TJ+bIDMZfwxdiRFtfWZAFLZZ08V17uzLxjnFGY06B1lLztGVynRhT70lPSuOLQ1dlsLB6qQwPu
	B80lDtA9JuaCug7scovg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIAnk-0004sq-By; Wed, 09 Oct 2019 12:10:44 +0000
Received: from imap1.codethink.co.uk ([176.9.8.82])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIAna-0004lo-K3; Wed, 09 Oct 2019 12:10:36 +0000
Received: from [167.98.27.226] (helo=rainbowdash.codethink.co.uk)
 by imap1.codethink.co.uk with esmtpsa (Exim 4.84_2 #1 (Debian))
 id 1iIAnQ-0005Bc-TR; Wed, 09 Oct 2019 13:10:25 +0100
Received: from ben by rainbowdash.codethink.co.uk with local (Exim 4.92.2)
 (envelope-from <ben@rainbowdash.codethink.co.uk>)
 id 1iIAnQ-0004Yf-5z; Wed, 09 Oct 2019 13:10:24 +0100
From: Ben Dooks <ben.dooks@codethink.co.uk>
To: linux-kernel@lists.codethink.co.uk
Subject: [PATCH] drm/rockchip: make rockchip_gem_alloc_object static
Date: Wed,  9 Oct 2019 13:10:22 +0100
Message-Id: <20191009121022.17478-1-ben.dooks@codethink.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_051034_809060_9D445A91 
X-CRM114-Status: GOOD (  11.96  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [176.9.8.82 listed in list.dnswl.org]
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
Cc: =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 David Airlie <airlied@linux.ie>, Sandy Huang <hjc@rock-chips.com>,
 dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 Ben Dooks <ben.dooks@codethink.co.uk>, Daniel Vetter <daniel@ffwll.ch>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

VGhlIHJvY2tjaGlwX2dlbV9hbGxvY19vYmplY3QgZnVuY3Rpb24gaXMgbm90IGV4cG9ydGVkIHNv
Cm1ha2UgaXQgc3RhdGljIHRvIGF2b2lkIHRoZSBmb2xsb3dpbmcgc3BhcnNlIHdhcm5pbmc6Cgpk
cml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX2dlbS5jOjI5NzoyODogd2Fybmlu
Zzogc3ltYm9sICdyb2NrY2hpcF9nZW1fYWxsb2Nfb2JqZWN0JyB3YXMgbm90IGRlY2xhcmVkLiBT
aG91bGQgaXQgYmUgc3RhdGljPwoKU2lnbmVkLW9mZi1ieTogQmVuIERvb2tzIDxiZW4uZG9va3NA
Y29kZXRoaW5rLmNvLnVrPgotLS0KQ2M6IFNhbmR5IEh1YW5nIDxoamNAcm9jay1jaGlwcy5jb20+
CkNjOiAiSGVpa28gU3TDvGJuZXIiIDxoZWlrb0BzbnRlY2guZGU+CkNjOiBEYXZpZCBBaXJsaWUg
PGFpcmxpZWRAbGludXguaWU+CkNjOiBEYW5pZWwgVmV0dGVyIDxkYW5pZWxAZmZ3bGwuY2g+CkNj
OiBkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCkNjOiBsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmcKQ2M6IGxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcK
LS0tCiBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX2dlbS5jIHwgMiArLQog
MSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV9nZW0uYyBiL2RyaXZlcnMv
Z3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fZ2VtLmMKaW5kZXggMjkxZTg5YjQwNDVmLi43
NTgyZDBlNmE2MGEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hp
cF9kcm1fZ2VtLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV9n
ZW0uYwpAQCAtMjk0LDcgKzI5NCw3IEBAIHN0YXRpYyB2b2lkIHJvY2tjaGlwX2dlbV9yZWxlYXNl
X29iamVjdChzdHJ1Y3Qgcm9ja2NoaXBfZ2VtX29iamVjdCAqcmtfb2JqKQogCWtmcmVlKHJrX29i
aik7CiB9CiAKLXN0cnVjdCByb2NrY2hpcF9nZW1fb2JqZWN0ICoKK3N0YXRpYyBzdHJ1Y3Qgcm9j
a2NoaXBfZ2VtX29iamVjdCAqCiAJcm9ja2NoaXBfZ2VtX2FsbG9jX29iamVjdChzdHJ1Y3QgZHJt
X2RldmljZSAqZHJtLCB1bnNpZ25lZCBpbnQgc2l6ZSkKIHsKIAlzdHJ1Y3Qgcm9ja2NoaXBfZ2Vt
X29iamVjdCAqcmtfb2JqOwotLSAKMi4yMy4wCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
