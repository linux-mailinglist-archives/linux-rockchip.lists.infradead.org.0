Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FD25135E45
	for <lists+linux-rockchip@lfdr.de>; Thu,  9 Jan 2020 17:29:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=jsWXdoWbie49lpuyqjeo9H1+lVoK108bkKIXZXLs93A=; b=ceZwU6o5Zcr047oUcTbbRLEKIv
	RY7yLZMapWfB2JpQJIa7pODnurb8F2p1zBqLQT7EE7g01/87HDEFtBUIpaTR72UVoBcZzD3id+X+J
	u1E//w9dhmuq/W+fSLQHUqfTeQpUpqWXcwxkhfsRE0K2NzIoMrNleFGsZALg/0/SePvFdcYMTTKCg
	81T0f8UY0eHBcBXp1VwEzSzaosTJ17b2Q/pgvefD+5ObGXjUd+W5+Rb1JfiSD70llnpTd+KA1rUD7
	3408nP2gnLVsMZcQxFbbCDapm8HCY0jicgKsXjPGLYw4TWes5ZqSDb979MtEgBw71z/AKAPDIcLWN
	mSGe5h9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipagQ-0005Z3-BS; Thu, 09 Jan 2020 16:29:18 +0000
Received: from wp126.webpack.hosteurope.de ([2a01:488:42:1000:50ed:8485::])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipagM-0005XP-Md
 for linux-rockchip@lists.infradead.org; Thu, 09 Jan 2020 16:29:16 +0000
Received: from [2003:a:659:3f00:1e6f:65ff:fe31:d1d5]
 (helo=hermes.fivetechno.de); authenticated
 by wp126.webpack.hosteurope.de running ExIM with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 id 1ipagH-0005oH-AL; Thu, 09 Jan 2020 17:29:09 +0100
X-Virus-Scanned: by amavisd-new 2.11.1 using newest ClamAV at
 linuxbbg.five-lan.de
Received: from [192.168.34.101] (p5098d998.dip0.t-ipconnect.de
 [80.152.217.152]) (authenticated bits=0)
 by hermes.fivetechno.de (8.15.2/8.14.5/SuSE Linux 0.8) with ESMTPSA id
 009GT7fs001705
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NO);
 Thu, 9 Jan 2020 17:29:07 +0100
From: Markus Reichl <m.reichl@fivetechno.de>
Organization: five technologies GmbH
To: Guenter Roeck <linux@roeck-us.net>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Heiko Stuebner <heiko@sntech.de>
Subject: [Bug ?] usb :typec :tcpm :fusb302
Message-ID: <0ac6bbe7-6395-526d-213c-ac58a19d8673@fivetechno.de>
Date: Thu, 9 Jan 2020 17:29:07 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
Content-Language: de-DE
X-bounce-key: webpack.hosteurope.de; m.reichl@fivetechno.de; 1578587354;
 525c3895; 
X-HE-SMSGID: 1ipagH-0005oH-AL
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_082914_876942_37394BE7 
X-CRM114-Status: UNSURE (   9.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Markus Reichl <m.reichl@fivetechno.de>, linux-rockchip@lists.infradead.org,
 Linux USB Mailing List <linux-usb@vger.kernel.org>,
 Linux Kernel <linux-kernel@vger.kernel.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

SGksCgpJJ20gd29ya2luZyB3aXRoIGEgUk9DLVJLMzM5OS1QQyBhcm02NCBib2FyZCBmcm9tIGZp
cmVmbHksIGNpcmN1aXQgc2hlZXQgWzFdLgpUaGUgYm9hcmQgaXMgcG93ZXJlZCBmcm9tIGFuIFVT
Qi1DIHR5cGUgY29ubmVjdG9yIHZpYSBhbiBGVVNCMzAyIFBEIGNvbnRyb2xsZXIuCldpdGggbWVh
c3VyZWQgMTVXKyBwb3dlciBjb25zdW1wdGlvbiBpdCBzaG91bGQgdXNlIGhpZ2hlciB2b2x0YWdl
IFBEIG1vZGVzIHRoYW4KdGhlIHN0YW5kYXJkIDVWIFVTQi1DIG1vZGUuCgpXaGVuIEkgYWRkIHRo
ZSByZWxhdGVkIGNvbm5lY3RvciBub2RlIGluIERUUyBbMl0gdGhlIEZVU0IzMDIgaW5pdGlhbGl6
ZXMKdGhlIHJpZ2h0IFBEIG1vZGUgKGUuZy4gMTVWLzNBKS4KCkJ1dCBkdXJpbmcgaW5pdGlhbGlz
YXRpb24gdGhlIFBEIGlzIHN3aXRjaGVkIG9mZiBzaG9ydGx5IGFuZCB0aGUgYm9hcmQgaGFzIGEg
YmxhY2tvdXQuCldoZW4gSSBpbmplY3QgYSBiYWNrdXAgc3VwcGx5IHZvbHRhZ2UgYmVoaW5kIHRo
ZSBGVVNCMzAyIChlLmcuIGF0IFNZU18xMlYgbGluZSkgZHVyaW5nIGJvb3QKSSBjYW4gcmVtb3Zl
IHRoZSBiYWNrdXAgYWZ0ZXIgc3VjY2VzZnVsbCBzZXR0aW5nIHVwIHRoZSBQRCBhbmQgdGhlIGJv
YXJkIHdpbGwgcnVuIGZpbmUuCgpJcyBpdCBwb3NzaWJsZSB0byBjaGFuZ2UgdGhlIGJlaGF2aW91
ciBvZiB0aGUgZnVzYjMwMiBkcml2ZXIgdG8gbm90IHBvd2VyIGRvd24gdGhlIFBEIHN1cHBseQpk
dXJpbmcgaW5pdD8KCkluIHZlbmRvciBrZXJuZWwgKDQuNCkgdGhpcyBpcyBkb25lIHNvbWVob3cg
YnV0IHRoZSBzb3VyY2VzIGFyZSB0b28gZGlmZmVyZW50IGZvciBtZSB0byBmaW5kCm91dCBob3cu
CgpHcnXDnywKLS0gCk1hcmt1cyBSZWljaGwKClsxXQpodHRwOi8vZG93bmxvYWQudC1maXJlZmx5
LmNvbS9wcm9kdWN0L1JLMzM5OS9Eb2NzL0hhcmR3YXJlLyVFNSU4RSU5RiVFNyU5MCU4NiVFNSU5
QiVCRSVFNSU5MiU4QyVFOCVCNCVCNCVFNyU4OSU4NyVFNSU5QiVCRS9ST0MtUkszMzk5LVBDL1JP
Qy0zMzk5LVBDLVYxMC1BLTIwMTgwODA0XyVFNSU4RSU5RiVFNyU5MCU4NiVFNSU5QiVCRS5wZGYK
ClsyXQpodHRwczovL2xrbWwub3JnL2xrbWwvMjAxOS8xMi8xMC81MTcKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcg
bGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
