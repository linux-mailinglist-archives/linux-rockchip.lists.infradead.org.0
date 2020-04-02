Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78C7019CA6C
	for <lists+linux-rockchip@lfdr.de>; Thu,  2 Apr 2020 21:45:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pDbmKeD2qwnPNgM+zYPcwgoksGEL8RQ6bARXsnzEPrA=; b=aum/MkOMN8mFT0
	lEi9crF8rAXtDxkIRWfh7LKTtZtdWUbCCv+XUr/IYtwnGoobLnY6icaOklJJhiLFdBXHxbpAjaY/4
	Br3cCUTEX4ZkV30/H4somG785kI+kNrbeg5sqz0z64MCJGWa6gCeX7tui4g11XJZuPSUOoj3f050Z
	tflhOBweiA8+LO2AD8I673bMkoATgXi6X/ThjC9/eH5r5Oge93oV7t081A8Atq5AI3Lxo8ktJhi5C
	1AgaLlZvjeJMbcAUGEimraK5ytdkV388fM2CMB+SPXM/dQjfQitke9sPm5gtyir6s1ITTod1HWspE
	Lw2ar8bOhGJXA058VlOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jK5mH-0005nA-Ky; Thu, 02 Apr 2020 19:45:25 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jK5mE-0005kg-AY
 for linux-rockchip@lists.infradead.org; Thu, 02 Apr 2020 19:45:23 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id BF10F290B60
From: Ezequiel Garcia <ezequiel@collabora.com>
To: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/3] rkisp1: Get rid of unused variable warning
Date: Thu,  2 Apr 2020 16:45:02 -0300
Message-Id: <20200402194504.5331-2-ezequiel@collabora.com>
X-Mailer: git-send-email 2.26.0.rc2
In-Reply-To: <20200402194504.5331-1-ezequiel@collabora.com>
References: <20200402194504.5331-1-ezequiel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_124522_500799_B40891A2 
X-CRM114-Status: UNSURE (   9.60  )
X-CRM114-Notice: Please train this message.
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
Cc: Hans Verkuil <hverkuil@xs4all.nl>, Ezequiel Garcia <ezequiel@collabora.com>,
 Helen Koike <helen.koike@collabora.com>, kernel@collabora.com,
 Robin Murphy <robin.murphy@arm.com>
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
IGhhcHB5LgoKU3VnZ2VzdGVkLWJ5OiBSb2JpbiBNdXJwaHkgPHJvYmluLm11cnBoeUBhcm0uY29t
PgpTaWduZWQtb2ZmLWJ5OiBFemVxdWllbCBHYXJjaWEgPGV6ZXF1aWVsQGNvbGxhYm9yYS5jb20+
Ci0tLQogZHJpdmVycy9zdGFnaW5nL21lZGlhL3JraXNwMS9ya2lzcDEtZGV2LmMgfCA4ICsrKyst
LS0tCiAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQoKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9ya2lzcDEvcmtpc3AxLWRldi5jIGIvZHJp
dmVycy9zdGFnaW5nL21lZGlhL3JraXNwMS9ya2lzcDEtZGV2LmMKaW5kZXggYjFiM2MwNThlOTU3
Li4zZjYyODU3MDkzNTIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9ya2lzcDEv
cmtpc3AxLWRldi5jCisrKyBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9ya2lzcDEvcmtpc3AxLWRl
di5jCkBAIC00NTQsMTYgKzQ1NCwxNyBAQCBzdGF0aWMgdm9pZCBya2lzcDFfZGVidWdfaW5pdChz
dHJ1Y3Qgcmtpc3AxX2RldmljZSAqcmtpc3AxKQogCiBzdGF0aWMgaW50IHJraXNwMV9wcm9iZShz
dHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQogewotCXN0cnVjdCBkZXZpY2Vfbm9kZSAqbm9k
ZSA9IHBkZXYtPmRldi5vZl9ub2RlOwogCWNvbnN0IHN0cnVjdCBya2lzcDFfbWF0Y2hfZGF0YSAq
Y2xrX2RhdGE7Ci0JY29uc3Qgc3RydWN0IG9mX2RldmljZV9pZCAqbWF0Y2g7CiAJc3RydWN0IGRl
dmljZSAqZGV2ID0gJnBkZXYtPmRldjsKIAlzdHJ1Y3Qgcmtpc3AxX2RldmljZSAqcmtpc3AxOwog
CXN0cnVjdCB2NGwyX2RldmljZSAqdjRsMl9kZXY7CiAJdW5zaWduZWQgaW50IGk7CiAJaW50IHJl
dCwgaXJxOwogCi0JbWF0Y2ggPSBvZl9tYXRjaF9ub2RlKHJraXNwMV9vZl9tYXRjaCwgbm9kZSk7
CisJY2xrX2RhdGEgPSBvZl9kZXZpY2VfZ2V0X21hdGNoX2RhdGEoJnBkZXYtPmRldik7CisJaWYg
KCFjbGtfZGF0YSkKKwkJcmV0dXJuIC1FTk9ERVY7CisKIAlya2lzcDEgPSBkZXZtX2t6YWxsb2Mo
ZGV2LCBzaXplb2YoKnJraXNwMSksIEdGUF9LRVJORUwpOwogCWlmICghcmtpc3AxKQogCQlyZXR1
cm4gLUVOT01FTTsKQEAgLTQ4Nyw3ICs0ODgsNiBAQCBzdGF0aWMgaW50IHJraXNwMV9wcm9iZShz
dHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQogCX0KIAogCXJraXNwMS0+aXJxID0gaXJxOwot
CWNsa19kYXRhID0gbWF0Y2gtPmRhdGE7CiAKIAlmb3IgKGkgPSAwOyBpIDwgY2xrX2RhdGEtPnNp
emU7IGkrKykKIAkJcmtpc3AxLT5jbGtzW2ldLmlkID0gY2xrX2RhdGEtPmNsa3NbaV07Ci0tIAoy
LjI2LjAucmMyCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1yb2NrY2hpcAo=
