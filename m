Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD0C6175EEC
	for <lists+linux-rockchip@lfdr.de>; Mon,  2 Mar 2020 16:58:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UbiEvqrTdgV4XtgAxCCRJar8FYcu+LFbOck0ux2l9yk=; b=C8GrBOe+oTZTON
	LnYJHS5cLxzbud8iO0mmDhUYtKn5DZ08IW/0tN7ftJn7bUhAsOFXfqy5aT20e+HAZYVOum5nlkDbe
	Mfhgr5Ze3tDn3s380UguiM6pjqIPSpRbvTh4uDQcpix1BXosFpdxVmgPpvVxCx2Ydj3lB+hXrSzDT
	W1WbVNT9wYay1JdA6W1vAqke6s1YfP1jgZlidKrTqQ3yhyRFzhfqzLto6jeKeovCDFHUMd8DaODiL
	kmXWv2356nR9LJeC6R1XR9p+ytW2Mth4NhzVVIS0+1TXUgoHg406LljiBoWrFJJcUVN9+HfsNXq5u
	kXBRmehVb2x++jzumB3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8nSj-0005HB-BZ; Mon, 02 Mar 2020 15:58:33 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8nSS-00055F-4U; Mon, 02 Mar 2020 15:58:17 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: myjosserand) with ESMTPSA id BFAD1296058
From: =?UTF-8?q?Myl=C3=A8ne=20Josserand?= <mylene.josserand@collabora.com>
To: linux@armlinux.org.uk, heiko@sntech.de, mturquette@baylibre.com,
 sboyd@kernel.org
Subject: [PATCH 0/2] ARM: Add Rockchip rk3288w support
Date: Mon,  2 Mar 2020 16:57:01 +0100
Message-Id: <20200302155703.278421-1-mylene.josserand@collabora.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_075816_310037_5B3062F1 
X-CRM114-Status: GOOD (  11.86  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: mylene.josserand@collabora.com, kernel@collabora.com,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

SGVsbG8gZXZlcnlvbmUsCgpUaGlzIHNlcmllcyBhZGRzIHRoZSBzdXBwb3J0IGZvciB0aGUgUm9j
a2NoaXAgUkszMjg4dyB3aGljaAppcyBhIHJldmlzaW9uIG9mIHRoZSBSSzMyODguIEl0IGlzIG1v
c3RseSB0aGUgc2FtZSBTT0MgZXhjZXB0CmZvciwgYXQgbGVhc3QsIG9uZSBjbG9jayB0cmVlIHdo
aWNoIGlzIGRpZmZlcmVudC4gVGhpcyBkaWZmZXJlbmNlCmlzIG9ubHkga25vd24gYnkgdGhlIEJT
UCBrZXJuZWwgcmVwb3NpdG9yeSBbMV0uCgpDdXJyZW50bHksIHRoZSBtYWlubGluZSBrZXJuZWwg
d2lsbCBub3QgaGFuZyBvbiByazMyODh3IGJ1dCBpdCBpcwpwcm9iYWJseSBieSAiY2hhbmNlIiBi
ZWNhdXNlIHdlIGdvdCBhbiBpc3N1ZSBvbiBhIGxvd2VyIGtlcm5lbCB2ZXJzaW9uLgoKQWNjb3Jk
aW5nIHRvIFJvY2tjaGlwJ3MgVS1Cb290IFsyXSwgdGhlIHJrMzI4OHcgY2FuIGJlIGRldGVjdGVk
IHVzaW5nCnRoZSBIRE1JIHJldmlzaW9uIG51bWJlciAoPSAweDFBKSBpbiB0aGlzIHZlcnNpb24g
b2YgdGhlIFNPQy4KTm90IHRvIHJlbHkgb24gVS1Cb290IGFib3V0IHRoZSBjb21wYXRpYmxlLCB0
aGUgcGF0Y2ggMDEgd2lsbCBoYW5kbGUKdGhlIGRldGVjdGlvbiBvZiB0aGUgSERNSSB2ZXJzaW9u
IGluIHRoZSByb2NrY2hpcCBzdWJzeXN0ZW0uCgpMZXQgbWUga25vdyB3aGF0IHlvdSB0aGluayEK
CkJlc3QgcmVnYXJkcywKTXlsw6huZSBKb3NzZXJhbmQKClsxXSBodHRwczovL2dpdGh1Yi5jb20v
cm9ja2NoaXAtbGludXgva2VybmVsL2Jsb2IvZGV2ZWxvcC00LjQvZHJpdmVycy9jbGsvcm9ja2No
aXAvY2xrLXJrMzI4OC5jI0w5NjAuLkw5NjQKWzJdIGh0dHBzOi8vZ2l0aHViLmNvbS9yb2NrY2hp
cC1saW51eC91LWJvb3QvYmxvYi9uZXh0LWRldi9hcmNoL2FybS9tYWNoLXJvY2tjaGlwL3JrMzI4
OC9yazMyODguYyNMMzc4Li5MMzg4CgpNeWzDqG5lIEpvc3NlcmFuZCAoMik6CiAgQVJNOiBSb2Nr
Y2hpcDogSGFuZGxlIHJrMzI4OC9yazMyODh3IHJldmlzaW9uCiAgY2xrOiByb2NrY2hpcDogcmsz
Mjg4OiBIYW5kbGUgY2xvY2sgdHJlZSBmb3IgcmszMjg4dwoKIGFyY2gvYXJtL21hY2gtcm9ja2No
aXAvcm9ja2NoaXAuYyB8IDQ1ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysKIGRyaXZl
cnMvY2xrL3JvY2tjaGlwL2Nsay1yazMyODguYyB8IDIxICsrKysrKysrKysrKystLQogaW5jbHVk
ZS9zb2Mvcm9ja2NoaXAvcmV2aXNpb24uaCAgIHwgMjIgKysrKysrKysrKysrKysrCiAzIGZpbGVz
IGNoYW5nZWQsIDg2IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCiBjcmVhdGUgbW9kZSAx
MDA2NDQgaW5jbHVkZS9zb2Mvcm9ja2NoaXAvcmV2aXNpb24uaAoKLS0gCjIuMjUuMQoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlw
IG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
