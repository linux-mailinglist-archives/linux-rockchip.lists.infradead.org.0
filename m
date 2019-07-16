Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DBAF6A8FD
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 14:58:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ex+mfhCcR5tEIi3AIJvBCwMZpm5iGRNLLE/6MCRoBbk=; b=LdMwYlUp6bhdDiwL2vlm34gZ+
	mCvMka9riQtFpu0O5XoWj2mSwpTEfE7Vd+ht/4T8mIJBdvMrsQrlnczpLiDMV1t4oY+dhAs6Yz+OI
	qBxYqHjDKkGLjWAX7hm9rlGJB0CZAw559mjWgZtZK1AO01rk+GZH6zW1f8i+Hfs2OscSNfKDShSD7
	/o2mZ6DqK1y7Vj+fnkul6Tv9iqd3fX6mU25Dsf54DLrFrjqjUDoOXDH3UUX3yljNwvC5dtz64SlOn
	fCj8Fovp2kDzck30jQo+/1GV5kXqX1/r0IERsg+WINbL30KTY/NtjoffiP8Db8On4vTdNsuERVG6f
	D75MGEFMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnN1y-0004Ag-DI; Tue, 16 Jul 2019 12:58:06 +0000
Received: from regular1.263xmail.com ([211.150.70.197])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnN1u-00049k-Aw
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 12:58:04 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.165.105])
 by regular1.263xmail.com (Postfix) with ESMTP id 6C14D5C7;
 Tue, 16 Jul 2019 20:57:52 +0800 (CST)
X-263anti-spam: KSV:0;BIG:0;
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-KSVirus-check: 0
X-ADDR-CHECKED4: 1
X-ABS-CHECKED: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from [192.168.60.65] (unknown [103.29.142.67])
 by smtp.263.net (postfix) whith ESMTP id
 P29430T139996621154048S1563281860880703_; 
 Tue, 16 Jul 2019 20:57:50 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <dfae6769fb086a366a3cb8f329983452>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 103.29.142.67
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v3 01/57] ram: rk3399: Add ddrtype enc macro
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 YouMin Chen <cym@rock-chips.com>, u-boot@lists.denx.de
References: <20190716115745.12585-1-jagan@amarulasolutions.com>
 <20190716115745.12585-2-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <aa1d313b-c777-afab-e1a6-e53be19ef968@rock-chips.com>
Date: Tue, 16 Jul 2019 20:57:41 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190716115745.12585-2-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_055802_578200_51EDA7B1 
X-CRM114-Status: GOOD (  12.46  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.197 listed in list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-rockchip@lists.infradead.org, gajjar04akash@gmail.com,
 linux-amarula@amarulasolutions.com,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Ck9uIDIwMTkvNy8xNiDkuIvljYg3OjU2LCBKYWdhbiBUZWtpIHdyb3RlOgo+IEFkZCBzaW1wbGlm
aWVkIGFuZCBtZWFuaW5nZnVsIG1hY3JvIGZvciBkZHJ0eXBlIG1hY3JvLgo+Cj4gU2lnbmVkLW9m
Zi1ieTogSmFnYW4gVGVraSA8amFnYW5AYW1hcnVsYXNvbHV0aW9ucy5jb20+Cj4gU2lnbmVkLW9m
Zi1ieTogWW91TWluIENoZW4gPGN5bUByb2NrLWNoaXBzLmNvbT4KClJldmlld2VkLWJ5OiBLZXZl
ciBZYW5nIDxLZXZlci55YW5nQHJvY2stY2hpcHMuY29tPgoKVGhhbmtzLAogwqAtIEtldmVyCj4g
LS0tCj4gICBhcmNoL2FybS9pbmNsdWRlL2FzbS9hcmNoLXJvY2tjaGlwL3NkcmFtX2NvbW1vbi5o
IHwgMSArCj4gICBkcml2ZXJzL3JhbS9yb2NrY2hpcC9zZHJhbV9yazMzOTkuYyAgICAgICAgICAg
ICAgIHwgMiArLQo+ICAgMiBmaWxlcyBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDEgZGVsZXRp
b24oLSkKPgo+IGRpZmYgLS1naXQgYS9hcmNoL2FybS9pbmNsdWRlL2FzbS9hcmNoLXJvY2tjaGlw
L3NkcmFtX2NvbW1vbi5oIGIvYXJjaC9hcm0vaW5jbHVkZS9hc20vYXJjaC1yb2NrY2hpcC9zZHJh
bV9jb21tb24uaAo+IGluZGV4IGI3NTQ5ZjVkOGEuLjkyYTRjNDg1YzIgMTAwNjQ0Cj4gLS0tIGEv
YXJjaC9hcm0vaW5jbHVkZS9hc20vYXJjaC1yb2NrY2hpcC9zZHJhbV9jb21tb24uaAo+ICsrKyBi
L2FyY2gvYXJtL2luY2x1ZGUvYXNtL2FyY2gtcm9ja2NoaXAvc2RyYW1fY29tbW9uLmgKPiBAQCAt
NzIsNiArNzIsNyBAQCBzdHJ1Y3Qgc2RyYW1fYmFzZV9wYXJhbXMgewo+ICAgI2RlZmluZSBTWVNf
UkVHX1JPV18zXzRfU0hJRlQoY2gpCSgzMCArIChjaCkpCj4gICAjZGVmaW5lIFNZU19SRUdfUk9X
XzNfNF9NQVNLCQkxCj4gICAjZGVmaW5lIFNZU19SRUdfQ0hJTkZPX1NISUZUKGNoKQkoMjggKyAo
Y2gpKQo+ICsjZGVmaW5lIFNZU19SRUdfRU5DX0REUlRZUEUobikJCSgobikgPDwgU1lTX1JFR19E
RFJUWVBFX1NISUZUKQo+ICAgI2RlZmluZSBTWVNfUkVHX1JBTktfU0hJRlQoY2gpCQkoMTEgKyAo
Y2gpICogMTYpCj4gICAjZGVmaW5lIFNZU19SRUdfUkFOS19NQVNLCQkxCj4gICAjZGVmaW5lIFNZ
U19SRUdfQ09MX1NISUZUKGNoKQkJKDkgKyAoY2gpICogMTYpCj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvcmFtL3JvY2tjaGlwL3NkcmFtX3JrMzM5OS5jIGIvZHJpdmVycy9yYW0vcm9ja2NoaXAvc2Ry
YW1fcmszMzk5LmMKPiBpbmRleCA5YTYwYzI0MTM1Li5mNTg4MzZjMDM3IDEwMDY0NAo+IC0tLSBh
L2RyaXZlcnMvcmFtL3JvY2tjaGlwL3NkcmFtX3JrMzM5OS5jCj4gKysrIGIvZHJpdmVycy9yYW0v
cm9ja2NoaXAvc2RyYW1fcmszMzk5LmMKPiBAQCAtMTA3Niw3ICsxMDc2LDcgQEAgc3RhdGljIHZv
aWQgZHJhbV9hbGxfY29uZmlnKHN0cnVjdCBkcmFtX2luZm8gKmRyYW0sCj4gICAJdTMyIHN5c19y
ZWcgPSAwOwo+ICAgCXVuc2lnbmVkIGludCBjaGFubmVsLCBpZHg7Cj4gICAKPiAtCXN5c19yZWcg
fD0gcGFyYW1zLT5iYXNlLmRyYW10eXBlIDw8IFNZU19SRUdfRERSVFlQRV9TSElGVDsKPiArCXN5
c19yZWcgfD0gU1lTX1JFR19FTkNfRERSVFlQRShwYXJhbXMtPmJhc2UuZHJhbXR5cGUpOwo+ICAg
CXN5c19yZWcgfD0gKHBhcmFtcy0+YmFzZS5udW1fY2hhbm5lbHMgLSAxKSA8PCBTWVNfUkVHX05V
TV9DSF9TSElGVDsKPiAgIAo+ICAgCWZvciAoY2hhbm5lbCA9IDAsIGlkeCA9IDA7CgoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlw
IG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
