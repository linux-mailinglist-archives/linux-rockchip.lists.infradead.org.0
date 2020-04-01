Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C29C19B7B4
	for <lists+linux-rockchip@lfdr.de>; Wed,  1 Apr 2020 23:37:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JZcAzNt8Kc5brp8Fu0J9mocgm89ddH+6yQcDJtisslI=; b=j4sZ9dJWcopLqg
	GixTspsSlKkfR8LXKLZ391KcPCHKBoNzf+c+jSFmp5AiiWte5bAuYmJfqhEZ2J+BPgg4nj4dl4Vyp
	UhzIj3jf1CGGllpFQ8aMBhlBVr72CG1B2v3XjsFOoCx5kSr+yktNu4BB9rTZEnTDqf4Tq/4xnXHLq
	VAB5l/o2ynsJHAv0pJr3oIK6gOIhXkuMZSM0+xlV3MxHcdZpfNiHRmTz2K/Neim29TEFaVM2ZecOV
	ukgXik7jBuER4UXfqhXBezIQoq6EPlk9zDa3CQ8B7i8gpEAjvj1ycKNIj5gkVRzMoo1BdBOy3c56s
	WGFhncSMyewGEu383epg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJl3P-0004ML-WB; Wed, 01 Apr 2020 21:37:43 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJl3N-0004Kw-8G
 for linux-rockchip@lists.infradead.org; Wed, 01 Apr 2020 21:37:42 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id CB6742976A1
From: Ezequiel Garcia <ezequiel@collabora.com>
To: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 1/3] rkisp1: Get rid of unused variable warning
Date: Wed,  1 Apr 2020 18:37:19 -0300
Message-Id: <20200401213721.24173-2-ezequiel@collabora.com>
X-Mailer: git-send-email 2.26.0.rc2
In-Reply-To: <20200401213721.24173-1-ezequiel@collabora.com>
References: <20200401213721.24173-1-ezequiel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_143741_419157_52488A73 
X-CRM114-Status: GOOD (  10.17  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Hans Verkuil <hverkuil@xs4all.nl>, kernel@collabora.com,
 Ezequiel Garcia <ezequiel@collabora.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

SWYgQ09ORklHX09GIGlzIG5vdCBzZWxlY3RlZCwgdGhlIGNvbXBpbGVyIHdpbGwgY29tcGxhaW46
Cgpkcml2ZXJzL3N0YWdpbmcvbWVkaWEvcmtpc3AxL3JraXNwMS1kZXYuYzogSW4gZnVuY3Rpb24g
4oCYcmtpc3AxX3Byb2Jl4oCZOgpkcml2ZXJzL3N0YWdpbmcvbWVkaWEvcmtpc3AxL3JraXNwMS1k
ZXYuYzo0NTc6MjI6IHdhcm5pbmc6IHVudXNlZCB2YXJpYWJsZSDigJhub2Rl4oCZIFstV3VudXNl
ZC12YXJpYWJsZV0KICA0NTcgfCAgc3RydWN0IGRldmljZV9ub2RlICpub2RlID0gcGRldi0+ZGV2
Lm9mX25vZGU7CgpSZXdvcmsgdGhlIGNvZGUgc2xpZ2h0bHkgYW5kIG1ha2UgdGhlIGNvbXBpbGVy
IGhhcHB5LgoKU2lnbmVkLW9mZi1ieTogRXplcXVpZWwgR2FyY2lhIDxlemVxdWllbEBjb2xsYWJv
cmEuY29tPgotLS0KIGRyaXZlcnMvc3RhZ2luZy9tZWRpYS9ya2lzcDEvcmtpc3AxLWRldi5jIHwg
MyArLS0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMiBkZWxldGlvbnMoLSkKCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvcmtpc3AxL3JraXNwMS1kZXYuYyBiL2Ry
aXZlcnMvc3RhZ2luZy9tZWRpYS9ya2lzcDEvcmtpc3AxLWRldi5jCmluZGV4IGIxYjNjMDU4ZTk1
Ny4uNWU3ZTc5N2FhZDcxIDEwMDY0NAotLS0gYS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvcmtpc3Ax
L3JraXNwMS1kZXYuYworKysgYi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvcmtpc3AxL3JraXNwMS1k
ZXYuYwpAQCAtNDU0LDcgKzQ1NCw2IEBAIHN0YXRpYyB2b2lkIHJraXNwMV9kZWJ1Z19pbml0KHN0
cnVjdCBya2lzcDFfZGV2aWNlICpya2lzcDEpCiAKIHN0YXRpYyBpbnQgcmtpc3AxX3Byb2JlKHN0
cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiB7Ci0Jc3RydWN0IGRldmljZV9ub2RlICpub2Rl
ID0gcGRldi0+ZGV2Lm9mX25vZGU7CiAJY29uc3Qgc3RydWN0IHJraXNwMV9tYXRjaF9kYXRhICpj
bGtfZGF0YTsKIAljb25zdCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkICptYXRjaDsKIAlzdHJ1Y3QgZGV2
aWNlICpkZXYgPSAmcGRldi0+ZGV2OwpAQCAtNDYzLDcgKzQ2Miw3IEBAIHN0YXRpYyBpbnQgcmtp
c3AxX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiAJdW5zaWduZWQgaW50IGk7
CiAJaW50IHJldCwgaXJxOwogCi0JbWF0Y2ggPSBvZl9tYXRjaF9ub2RlKHJraXNwMV9vZl9tYXRj
aCwgbm9kZSk7CisJbWF0Y2ggPSBvZl9tYXRjaF9ub2RlKHJraXNwMV9vZl9tYXRjaCwgcGRldi0+
ZGV2Lm9mX25vZGUpOwogCXJraXNwMSA9IGRldm1fa3phbGxvYyhkZXYsIHNpemVvZigqcmtpc3Ax
KSwgR0ZQX0tFUk5FTCk7CiAJaWYgKCFya2lzcDEpCiAJCXJldHVybiAtRU5PTUVNOwotLSAKMi4y
Ni4wLnJjMgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK
