Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E3D619E7C
	for <lists+linux-rockchip@lfdr.de>; Fri, 10 May 2019 15:51:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kplMhwloFRqAtvumwXyAaAFxvm7LpNsfefTAHfxALbU=; b=CY8tzOneosDvUx
	wYTycJaGitwZP8k5kLOTDrOY0VAeyG62MT+ALBaIv9XBPllOHSA/m0jwb6tIDXpuCECNfAUq8bx2S
	HuerWQkgKfmdYaUak+5zIPFNuFMH9ndf4AWyuyLzt0D1+J6cdRHck9Lqi/6hL8sj/aSQiud6NMpho
	J8/m5jOoBTcWLTuuWaiYIn9AzDMhhV2AH6EjU8BNdV9EbsSt1zDyGIonaajqjpB+GqoWS/hSwhOUt
	aGyoNJIn41jJjRyCZNNEyXXhi6Jm+MwssWZ75xrV6tk7uuuZIasmggEfa9M86QWw0lYntqn/2hlps
	PpGk4ZfowjGRocOr83mA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP5vs-0004b4-AR; Fri, 10 May 2019 13:51:28 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP5vo-0004Zz-BO
 for linux-rockchip@lists.infradead.org; Fri, 10 May 2019 13:51:26 +0000
Received: by mail-qk1-x744.google.com with SMTP id w25so3651366qkj.11
 for <linux-rockchip@lists.infradead.org>; Fri, 10 May 2019 06:51:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ndufresne-ca.20150623.gappssmtp.com; s=20150623;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=KdLJdmWc/A0FbGvK9NtD7jc+LzhwzZbiSdsPy/m0Yqc=;
 b=L2e4AKwvKKJq+xR9TZ4IUmWk4OdtDr0e08lrM8zhCAOufsBLQSyAIWr5oeXUfYJ4XO
 6DLGyPW5uV8BUTtai0n14oXwV8Z55icQVejpP85MeNFaT6sQYuz3GwKfddw3MdOohSxB
 7+jLEF+R39QRF35zOhvRpFPJiLl+lH13bFwKbgdqSzoT1uRxLFfUJAQCJvRASaRvCUyS
 dsix9Alnl4nI+eXrNSPvKMGHCzXjmODwjqAJ1TG2FnPWCCAmWAAJU+c/aV2h9KNtUI9q
 cJMT4r0AGsdbv5yLrFJDyhqBQKBAxltdqsAgHmsDZhFA+xRDmLqUxX9ecjghDUrqg3fq
 QB1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=KdLJdmWc/A0FbGvK9NtD7jc+LzhwzZbiSdsPy/m0Yqc=;
 b=giXEeL1NYzI3fcQRzJMPrD6AWQtHWL2ve8SDHgt4tnr+hbeo+b1b1uPQVjE2vI5X+O
 +72CsaFtpXGbaHraw4FwwBaszpTkmCdwjtvXeiuLu0ruRWdkC+r65ndHiWtzZQogn3vl
 N8du5MwXOq3BjLP9NvbtCBIvoHkG5moceG+ndIJDqeBfAUg0zlu53LG4enHKgvl5rata
 jkeyzrAzcKwpVfSSlix5B0WW55HmSfR6rUTr0ktLK5tw3UNrfeu0yxjYDYVaQiiN8g/Y
 P+Va40bETjIPwxY8r5c/ChyuBDJhuX81fo5A81X6CO/o3QQxPtImM0pf5gm3PlC8VXX7
 BZrg==
X-Gm-Message-State: APjAAAUjFArRRGDBLLDyVlQ5Ed4eC1gg8UksZzZar676JQTRpY0l4mNV
 zP7Y++Io5QTfcP26zT6BXsiZKw==
X-Google-Smtp-Source: APXvYqxJgG5iTxmYWTijkc8G0gT+VoOiiKQbWM+JFKboH7XkWp4oCFxWk964BE5OPmlXsH8xB3EeVw==
X-Received: by 2002:a37:a794:: with SMTP id q142mr8990696qke.36.1557496280475; 
 Fri, 10 May 2019 06:51:20 -0700 (PDT)
Received: from skullcanyon ([2002:c0de:c115:0:481e:e17e:2f68:43f8])
 by smtp.gmail.com with ESMTPSA id a1sm2409655qth.69.2019.05.10.06.51.18
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 10 May 2019 06:51:19 -0700 (PDT)
Message-ID: <106a6aa5fe62cf5b18652b667d15bc8677790cad.camel@ndufresne.ca>
Subject: Re: [PATCH v5 03/15] media: v4l2-common: Support custom
 imagesize/bytesperline in fill_pixfmt()
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Hans Verkuil <hverkuil@xs4all.nl>, Laurent Pinchart
 <laurent.pinchart@ideasonboard.com>
Date: Fri, 10 May 2019 09:51:17 -0400
In-Reply-To: <f9ffc9ae-2c27-2883-7f62-9931597c8e75@xs4all.nl>
References: <20190503114719.28784-1-boris.brezillon@collabora.com>
 <20190503114719.28784-4-boris.brezillon@collabora.com>
 <0c5a648c-27a8-8195-8ad9-8cefb4369837@xs4all.nl>
 <20190510112847.GA4972@pendragon.ideasonboard.com>
 <c2d02ffb-5273-67a8-1a3a-c7268dc7bfb6@xs4all.nl>
 <20190510122411.GB4972@pendragon.ideasonboard.com>
 <f9ffc9ae-2c27-2883-7f62-9931597c8e75@xs4all.nl>
User-Agent: Evolution 3.32.1 (3.32.1-1.fc30) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_065124_547574_7FFB6A06 
X-CRM114-Status: GOOD (  33.17  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: kernel@collabora.com, Heiko Stuebner <heiko@sntech.de>,
 Jonas Karlman <jonas@kwiboo.se>,
 Kieran Bingham <kieran.bingham@ideasonboard.com>,
 Tomasz Figa <tfiga@chromium.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Sakari Ailus <sakari.ailus@iki.fi>, Hans Verkuil <hans.verkuil@cisco.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

TGUgdmVuZHJlZGkgMTAgbWFpIDIwMTkgw6AgMTQ6MzAgKzAyMDAsIEhhbnMgVmVya3VpbCBhIMOp
Y3JpdCA6Cj4gT24gNS8xMC8xOSAyOjI0IFBNLCBMYXVyZW50IFBpbmNoYXJ0IHdyb3RlOgo+ID4g
SGkgSGFucywKPiA+IAo+ID4gT24gRnJpLCBNYXkgMTAsIDIwMTkgYXQgMDI6MTc6MzJQTSArMDIw
MCwgSGFucyBWZXJrdWlsIHdyb3RlOgo+ID4gPiBPbiA1LzEwLzE5IDE6MjggUE0sIExhdXJlbnQg
UGluY2hhcnQgd3JvdGU6Cj4gPiA+ID4gT24gRnJpLCBNYXkgMTAsIDIwMTkgYXQgMTA6NTc6MjZB
TSArMDIwMCwgSGFucyBWZXJrdWlsIHdyb3RlOgo+ID4gPiA+ID4gT24gNS8zLzE5IDE6NDcgUE0s
IEJvcmlzIEJyZXppbGxvbiB3cm90ZToKPiA+ID4gPiA+ID4gVXNlcnMgY2FuIGRlZmluZSBjdXN0
b20gc2l6ZWltYWdlIGFuZCBieXRlc3BlcmxpbmUgYXMgbG9uZyBhcyB0aGV5J3JlCj4gPiA+ID4g
PiA+IGJpZyBlbm91Z2ggdG8gc3RvcmUgdGhlIGFtb3VudCBvZiBwaXhlbHMgcmVxdWlyZWQgZm9y
IGEgc3BlY2lmaWMKPiA+ID4gPiA+ID4gd2lkdGgvaGVpZ2h0IHVuZGVyIGEgc3BlY2lmaWMgZm9y
bWF0LiBBdm9pZCBvdmVycmlkaW5nIHRob3NlIGZpZWxkcyBpbgo+ID4gPiA+ID4gPiB0aGlzIGNh
c2UuCj4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBCb3JpcyBCcmV6aWxs
b24gPGJvcmlzLmJyZXppbGxvbkBjb2xsYWJvcmEuY29tPgo+ID4gPiA+ID4gPiAtLS0KPiA+ID4g
PiA+ID4gSGVsbG8gSGFucywKPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+IFRoZSBzaXplaW1hZ2Uv
Ynl0ZXNwZXJsaW5lIGNoZWNrIG9uICFNUExBTkUgZm9ybWF0cyBpcyBzdGlsbCBub3QgMTAwJQo+
ID4gPiA+ID4gPiBzdXJlLCBhcyBjdXN0b20gYnl0ZXNwZXJsaW5lIG1pZ2h0IGluZHVjZSBiaWdn
ZXIgc2l6ZWltYWdlIHRoYW4gd2hhdAo+ID4gPiA+ID4gPiB3ZSBjYWxjdWxhdGUuCj4gPiA+ID4g
PiA+IAo+ID4gPiA+ID4gPiBJIHRyaWVkIGltcGxlbWVudGluZyBzb21ldGhpbmcgc21hcnRlciB0
YWtpbmcgdGhlIHBlci1jb21wb25lbnQgcGxhbmUKPiA+ID4gPiA+ID4gYnBwICsgaGRpdiBwYXJh
bSBhcyB3ZSBkaXNjdXNzZWQgdGhlIG90aGVyIGRheSBidXQgZGVjaWRlZCB0byBzdGVwCj4gPiA+
ID4gPiA+IGJhY2sgYWZ0ZXIgcmVhbGl6aW5nIHRoZSBwZXItY29tcG9uZW50IHBsYW5lIG1hY3Jv
IGJsb2NrIG1pZ2h0IGFsc28KPiA+ID4gPiA+ID4gZGlmZmVyIGF0IGxlYXN0IGluIHRoZW9yeSAo
bm90IHN1cmUgdGhhdCdzIHRydWUgaW4gcHJhY3RpY2UpIGFuZCB0aGF0Cj4gPiA+ID4gPiA+IGhh
cyBhbiBpbXBhY3Qgb24gYnl0ZXNwZXJsaW5lIHRvby4KPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+
IExldCBtZSBrbm93IGhvdyB5b3Ugd2FudCB0byBoYW5kbGUgdGhhdCBjYXNlLgo+ID4gPiA+ID4g
PiAKPiA+ID4gPiA+ID4gUmVnYXJkcywKPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+IEJvcmlzCj4g
PiA+ID4gPiA+IAo+ID4gPiA+ID4gPiBDaGFuZ2VzIGluIHY1Ogo+ID4gPiA+ID4gPiAqIE5ldyBw
YXRjaAo+ID4gPiA+ID4gPiAtLS0KPiA+ID4gPiA+ID4gIGRyaXZlcnMvbWVkaWEvdjRsMi1jb3Jl
L3Y0bDItY29tbW9uLmMgfCA1NCArKysrKysrKysrKysrKysrKysrLS0tLS0tLS0KPiA+ID4gPiA+
ID4gIDEgZmlsZSBjaGFuZ2VkLCAzOSBpbnNlcnRpb25zKCspLCAxNSBkZWxldGlvbnMoLSkKPiA+
ID4gPiA+ID4gCj4gPiA+ID4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3Y0bDItY29y
ZS92NGwyLWNvbW1vbi5jIGIvZHJpdmVycy9tZWRpYS92NGwyLWNvcmUvdjRsMi1jb21tb24uYwo+
ID4gPiA+ID4gPiBpbmRleCAzYzZmNWMxMTVmYzUuLjM3YmZjOTg0YThiNSAxMDA2NDQKPiA+ID4g
PiA+ID4gLS0tIGEvZHJpdmVycy9tZWRpYS92NGwyLWNvcmUvdjRsMi1jb21tb24uYwo+ID4gPiA+
ID4gPiArKysgYi9kcml2ZXJzL21lZGlhL3Y0bDItY29yZS92NGwyLWNvbW1vbi5jCj4gPiA+ID4g
PiA+IEBAIC01NjMsOSArNTYzLDEwIEBAIGludCB2NGwyX2ZpbGxfcGl4Zm10X21wKHN0cnVjdCB2
NGwyX3BpeF9mb3JtYXRfbXBsYW5lICpwaXhmbXQsCj4gPiA+ID4gPiA+ICAJcGl4Zm10LT5udW1f
cGxhbmVzID0gaW5mby0+bWVtX3BsYW5lczsKPiA+ID4gPiA+ID4gIAo+ID4gPiA+ID4gPiAgCWlm
IChpbmZvLT5tZW1fcGxhbmVzID09IDEpIHsKPiA+ID4gPiA+ID4gKwkJdTMyIGJ5dGVzcGVybGlu
ZSwgc2l6ZWltYWdlID0gMDsKPiA+ID4gPiA+ID4gKwo+ID4gPiA+ID4gPiAgCQlwbGFuZSA9ICZw
aXhmbXQtPnBsYW5lX2ZtdFswXTsKPiA+ID4gPiA+ID4gLQkJcGxhbmUtPmJ5dGVzcGVybGluZSA9
IEFMSUdOKHdpZHRoLCB2NGwyX2Zvcm1hdF9ibG9ja193aWR0aChpbmZvLCAwKSkgKiBpbmZvLT5i
cHBbMF07Cj4gPiA+ID4gPiA+IC0JCXBsYW5lLT5zaXplaW1hZ2UgPSAwOwo+ID4gPiA+ID4gPiAr
CQlieXRlc3BlcmxpbmUgPSBBTElHTih3aWR0aCwgdjRsMl9mb3JtYXRfYmxvY2tfd2lkdGgoaW5m
bywgMCkpICogaW5mby0+YnBwWzBdOwo+ID4gPiA+ID4gPiAgCj4gPiA+ID4gPiA+ICAJCWZvciAo
aSA9IDA7IGkgPCBpbmZvLT5jb21wX3BsYW5lczsgaSsrKSB7Cj4gPiA+ID4gPiA+ICAJCQl1bnNp
Z25lZCBpbnQgaGRpdiA9IChpID09IDApID8gMSA6IGluZm8tPmhkaXY7Cj4gPiA+ID4gPiA+IEBA
IC01NzYsMTAgKzU3NywxNyBAQCBpbnQgdjRsMl9maWxsX3BpeGZtdF9tcChzdHJ1Y3QgdjRsMl9w
aXhfZm9ybWF0X21wbGFuZSAqcGl4Zm10LAo+ID4gPiA+ID4gPiAgCQkJYWxpZ25lZF93aWR0aCA9
IEFMSUdOKHdpZHRoLCB2NGwyX2Zvcm1hdF9ibG9ja193aWR0aChpbmZvLCBpKSk7Cj4gPiA+ID4g
PiA+ICAJCQlhbGlnbmVkX2hlaWdodCA9IEFMSUdOKGhlaWdodCwgdjRsMl9mb3JtYXRfYmxvY2tf
aGVpZ2h0KGluZm8sIGkpKTsKPiA+ID4gPiA+ID4gIAo+ID4gPiA+ID4gPiAtCQkJcGxhbmUtPnNp
emVpbWFnZSArPSBpbmZvLT5icHBbaV0gKgo+ID4gPiA+ID4gPiAtCQkJCURJVl9ST1VORF9VUChh
bGlnbmVkX3dpZHRoLCBoZGl2KSAqCj4gPiA+ID4gPiA+IC0JCQkJRElWX1JPVU5EX1VQKGFsaWdu
ZWRfaGVpZ2h0LCB2ZGl2KTsKPiA+ID4gPiA+ID4gKwkJCXNpemVpbWFnZSArPSBpbmZvLT5icHBb
aV0gKgo+ID4gPiA+ID4gPiArCQkJCSAgICAgRElWX1JPVU5EX1VQKGFsaWduZWRfd2lkdGgsIGhk
aXYpICoKPiA+ID4gPiA+ID4gKwkJCQkgICAgIERJVl9ST1VORF9VUChhbGlnbmVkX2hlaWdodCwg
dmRpdik7Cj4gPiA+ID4gPiA+ICAJCX0KPiA+ID4gPiA+ID4gKwo+ID4gPiA+ID4gPiArCQkvKgo+
ID4gPiA+ID4gPiArCQkgKiBUaGUgdXNlciBtaWdodCBoYXZlIHNwZWNpZmllZCBjdXN0b20gc2l6
ZWltYWdlL2J5dGVzcGVybGluZSwKPiA+ID4gPiA+ID4gKwkJICogb25seSBvdmVycmlkZSB0aGVt
IGlmIHRoZXkncmUgbm90IGJpZyBlbm91Z2guCj4gPiA+ID4gPiA+ICsJCSAqLwo+ID4gPiA+ID4g
PiArCQlwbGFuZS0+c2l6ZWltYWdlID0gbWF4KHNpemVpbWFnZSwgcGxhbmUtPnNpemVpbWFnZSk7
Cj4gPiA+ID4gPiA+ICsJCXBsYW5lLT5ieXRlc3BlcmxpbmUgPSBtYXgoYnl0ZXNwZXJsaW5lLCBw
bGFuZS0+Ynl0ZXNwZXJsaW5lKTsKPiA+ID4gPiA+IAo+ID4gPiA+ID4gTGV0J3MganVzdCBzZXQg
Ynl0ZXNwZXJsaW5lLCBpZ25vcmluZyB0aGUgdmFsdWUgdGhlIHVzZXIgc3VwcGxpZWQuIFRoZXJl
IGFyZSB2ZXJ5Cj4gPiA+ID4gPiBmZXcgZHJpdmVycyB0aGF0IGFsbG93IHRoZSB1c2VyIHRvIHNl
dCBieXRlc3BlcmxpbmUgYW55d2F5LCBzbyBpdCdzIG5vdCBhIGJpZyBkZWFsCj4gPiA+ID4gPiB0
byBkcm9wIHN1cHBvcnQgZm9yIHRoYXQgZm9yIG5vdy4gV2UgY2FuIGFkZCBpdCBiYWNrIGxhdGVy
Lgo+ID4gPiA+ID4gCj4gPiA+ID4gPiBKdXN0IGFkZCBhIGNvbW1lbnQgdGhhdCBhIHVzZXItZGVm
aW5lZCBieXRlc3BlcmxpbmUgdmFsdWUgaXNuJ3QgY3VycmVudGx5IHN1cHBvcnRlZC4KPiA+ID4g
PiAKPiA+ID4gPiBLaWVyYW4gcmVjZW50bHkgcmFuIGludG8gYW4gaXNzdWUgcmVsYXRlZCB0byB0
aGlzLCB3aGVuIHNoYXJpbmcgYnVmZmVycwo+ID4gPiA+IGJldHdlZW4gYSBDU0ktMiByZWNlaXZl
ciBhbmQgYW4gSVNQLiBUaGUgSVNQIGhhcyBhbGlnbm1lbnQgY29uc3RyYWludHMKPiA+ID4gPiBp
biBib3RoIHRoZSBob3Jpem9udGFsIGFuZCB2ZXJ0aWNhbCBkaXJlY3Rpb25zIG9uIHRoZSBsaW5l
IHN0cmlkZSBhbmQKPiA+ID4gPiB0b3RhbCBpbWFnZSBzaXplLiBPdXQgc29mdHdhcmUgZnJhbWV3
b3JrIGN1cnJlbnRseSBhbGxvY2F0ZXMgYnVmZmVycwo+ID4gPiA+IGZyb20gdGhlIENTSS0yIHJl
Y2VpdmVyIHdoaWNoIGRvZXNuJ3QgaGF2ZSB0aG9zZSBjb25zdHJhaW50cywgYW5kIG5vdAo+ID4g
PiA+IGJlaW5nIGFibGUgdG8gc3BlY2lmeSBzaXplaW1hZ2UgaXMgdGh1cyBhIHByb2JsZW0uCj4g
PiA+IAo+ID4gPiBOb3QgYmVpbmcgYWJsZSB0byBzcGVjaWZ5IHNpemVpbWFnZSB3aGVyZT8gRnJv
bSB1c2Vyc3BhY2U/IFNvcnJ5LCBJIGRvbid0Cj4gPiA+IHF1aXRlIHVuZGVyc3RhbmQgdGhlIHNw
ZWNpZmljIGlzc3VlIGhlcmUuCj4gPiAKPiA+IFllcywgZnJvbSB1c2Vyc3BhY2UuCj4gCj4gQWgs
IE9LLiBCdXQgd2h5IG5vdCB1c2UgQ1JFQVRFQlVGUz8gWW91IGNhbiBwcm92aWRlIHlvdXIgb3du
IHNpemUgd2hlbiBhbGxvY2F0aW5nCj4gdGhlIGJ1ZmZlcnMuCj4gCj4gQWxzbyBub3RlIHRoaXMg
cGF0Y2g6IGh0dHBzOi8vcGF0Y2h3b3JrLmxpbnV4dHYub3JnL3BhdGNoLzU1NjU2Lwo+IAo+IEFs
dGhvdWdoIHRoaXMgaXMgc3BlY2lmaWMgZm9yIGNvbXByZXNzZWQgZm9ybWF0cy4KCldoaWxlIHRo
aXMgd29yayBmb3IgY29tcHJlc3NlZCBmb3JtYXRzLCBpdCBkb2VzIG5vdCBkbyBhbnl0aGluZyBm
b3IgcmF3CmltYWdlIGhvcml6b250YWwgcGFkZGluZy4gVGhlIGltcG9ydGF0aW9uIGJpdCBvZiBW
NEwyIGlzIHByZXR0eQpkaWZmaWN1bHQsIHNvIGlmIHdlIGFkZCBoZWxwZXJzLCB3ZSBzaG91bGQg
bG9hZCB0aGUgd2F5IGFuZCBzaW1wbGlmeQp0aGluZ3MgZm9yIHVzZXJzcGFjZSByYXRoZXIgdGhl
biBlbmZvcmNpbmcgdGhlIGV4aXN0aW5nIGRpZmZpY3VsdHkuCgpJIHRoaW5rIGZyb20gbm93IG93
biB3ZSBzaG91bGQgZGVzaWduIHdpdGggdGhlIG1pbmRzZXQgdGhhdCBhIERNQUJ1Zgp0aGF0IGNh
bm5vdCBiZSBpbXBvcnRlZCBiYWNrIGludG8gYW5vdGhlciBkcml2ZXIgZHVlIHRvIHNvZnR3YXJl
CmxpbWl0YXRpb25zIGlzIGEgdXNlbGVzcyB3YXN0ZSBvZiBGRC4KCk5pY29sYXMKCj4gCj4gUmVn
YXJkcywKPiAKPiAJSGFucwo+IAo+ID4gPiA+IFdlIGhhdmUgd29ya2VkIGFyb3VuZCB0aGlzIGJ5
IGFsbG9jYXRpbmcgYnVmZmVycyBvbiB0aGUgSVNQIHNpZGUgYnV0Cj4gPiA+ID4gdGhhdCBkZXBh
cnRlZCBmcm9tIHRoZSBub3JtYWwgd2F5IG9mIG9wZXJhdGlvbiwgYW5kIGl0IG1heSBub3QgYmUg
YSBnb29kCj4gPiA+ID4gaWRlYSB0byBjYXJyeSB0aGF0IGZvcndhcmQuCj4gPiA+ID4gCj4gPiA+
ID4gSSB3b25kZXIgaG93IHdlIHNob3VsZCBzb2x2ZSB0aGVzZSBpc3N1ZXMgbG9uZyB0ZXJtLiBB
IGNlbnRyYWwgbWVtb3J5Cj4gPiA+ID4gYWxsb2NhdG9yIGlzIHByb2JhYmx5IHRoZSB3YXkgdG8g
Z28uCj4gPiA+ID4gCj4gPiA+ID4gPiA+ICAJfSBlbHNlIHsKPiA+ID4gPiA+ID4gIAkJZm9yIChp
ID0gMDsgaSA8IGluZm8tPmNvbXBfcGxhbmVzOyBpKyspIHsKPiA+ID4gPiA+ID4gIAkJCXVuc2ln
bmVkIGludCBoZGl2ID0gKGkgPT0gMCkgPyAxIDogaW5mby0+aGRpdjsKPiA+ID4gPiA+ID4gQEAg
LTU5MSwxMCArNTk5LDIwIEBAIGludCB2NGwyX2ZpbGxfcGl4Zm10X21wKHN0cnVjdCB2NGwyX3Bp
eF9mb3JtYXRfbXBsYW5lICpwaXhmbXQsCj4gPiA+ID4gPiA+ICAJCQlhbGlnbmVkX2hlaWdodCA9
IEFMSUdOKGhlaWdodCwgdjRsMl9mb3JtYXRfYmxvY2tfaGVpZ2h0KGluZm8sIGkpKTsKPiA+ID4g
PiA+ID4gIAo+ID4gPiA+ID4gPiAgCQkJcGxhbmUgPSAmcGl4Zm10LT5wbGFuZV9mbXRbaV07Cj4g
PiA+ID4gPiA+IC0JCQlwbGFuZS0+Ynl0ZXNwZXJsaW5lID0KPiA+ID4gPiA+ID4gLQkJCQlpbmZv
LT5icHBbaV0gKiBESVZfUk9VTkRfVVAoYWxpZ25lZF93aWR0aCwgaGRpdik7Cj4gPiA+ID4gPiA+
IC0JCQlwbGFuZS0+c2l6ZWltYWdlID0KPiA+ID4gPiA+ID4gLQkJCQlwbGFuZS0+Ynl0ZXNwZXJs
aW5lICogRElWX1JPVU5EX1VQKGFsaWduZWRfaGVpZ2h0LCB2ZGl2KTsKPiA+ID4gPiA+ID4gKwo+
ID4gPiA+ID4gPiArCQkJLyoKPiA+ID4gPiA+ID4gKwkJCSAqIFRoZSB1c2VyIG1pZ2h0IGhhdmUg
c3BlY2lmaWVkIGN1c3RvbQo+ID4gPiA+ID4gPiArCQkJICogc2l6ZWltYWdlL2J5dGVzcGVybGlu
ZSwgb25seSBvdmVycmlkZSB0aGVtIGlmCj4gPiA+ID4gPiA+ICsJCQkgKiB0aGV5J3JlIG5vdCBi
aWcgZW5vdWdoLgo+ID4gPiA+ID4gPiArCQkJICovCj4gPiA+ID4gPiA+ICsJCQlwbGFuZS0+Ynl0
ZXNwZXJsaW5lID0gbWF4X3QodTMyLAo+ID4gPiA+ID4gPiArCQkJCQkJICAgIGluZm8tPmJwcFtp
XSAqCj4gPiA+ID4gPiA+ICsJCQkJCQkgICAgRElWX1JPVU5EX1VQKGFsaWduZWRfd2lkdGgsIGhk
aXYpLAo+ID4gPiA+ID4gPiArCQkJCQkJICAgIHBsYW5lLT5ieXRlc3BlcmxpbmUpOwo+ID4gPiA+
ID4gPiArCQkJcGxhbmUtPnNpemVpbWFnZSA9IG1heF90KHUzMiwKPiA+ID4gPiA+ID4gKwkJCQkJ
CSBwbGFuZS0+Ynl0ZXNwZXJsaW5lICoKPiA+ID4gPiA+ID4gKwkJCQkJCSBESVZfUk9VTkRfVVAo
YWxpZ25lZF9oZWlnaHQsIHZkaXYpLAo+ID4gPiA+ID4gPiArCQkJCQkJIHBsYW5lLT5zaXplaW1h
Z2UpOwo+ID4gPiA+ID4gPiAgCQl9Cj4gPiA+ID4gPiA+ICAJfQo+ID4gPiA+ID4gPiAgCXJldHVy
biAwOwo+ID4gPiA+ID4gPiBAQCAtNjA1LDYgKzYyMyw3IEBAIGludCB2NGwyX2ZpbGxfcGl4Zm10
KHN0cnVjdCB2NGwyX3BpeF9mb3JtYXQgKnBpeGZtdCwgdTMyIHBpeGVsZm9ybWF0LAo+ID4gPiA+
ID4gPiAgCQkgICAgIHUzMiB3aWR0aCwgdTMyIGhlaWdodCkKPiA+ID4gPiA+ID4gIHsKPiA+ID4g
PiA+ID4gIAljb25zdCBzdHJ1Y3QgdjRsMl9mb3JtYXRfaW5mbyAqaW5mbzsKPiA+ID4gPiA+ID4g
Kwl1MzIgYnl0ZXNwZXJsaW5lLCBzaXplaW1hZ2UgPSAwOwo+ID4gPiA+ID4gPiAgCWludCBpOwo+
ID4gPiA+ID4gPiAgCj4gPiA+ID4gPiA+ICAJaW5mbyA9IHY0bDJfZm9ybWF0X2luZm8ocGl4ZWxm
b3JtYXQpOwo+ID4gPiA+ID4gPiBAQCAtNjE4LDggKzYzNyw3IEBAIGludCB2NGwyX2ZpbGxfcGl4
Zm10KHN0cnVjdCB2NGwyX3BpeF9mb3JtYXQgKnBpeGZtdCwgdTMyIHBpeGVsZm9ybWF0LAo+ID4g
PiA+ID4gPiAgCXBpeGZtdC0+d2lkdGggPSB3aWR0aDsKPiA+ID4gPiA+ID4gIAlwaXhmbXQtPmhl
aWdodCA9IGhlaWdodDsKPiA+ID4gPiA+ID4gIAlwaXhmbXQtPnBpeGVsZm9ybWF0ID0gcGl4ZWxm
b3JtYXQ7Cj4gPiA+ID4gPiA+IC0JcGl4Zm10LT5ieXRlc3BlcmxpbmUgPSBBTElHTih3aWR0aCwg
djRsMl9mb3JtYXRfYmxvY2tfd2lkdGgoaW5mbywgMCkpICogaW5mby0+YnBwWzBdOwo+ID4gPiA+
ID4gPiAtCXBpeGZtdC0+c2l6ZWltYWdlID0gMDsKPiA+ID4gPiA+ID4gKwlieXRlc3BlcmxpbmUg
PSBBTElHTih3aWR0aCwgdjRsMl9mb3JtYXRfYmxvY2tfd2lkdGgoaW5mbywgMCkpICogaW5mby0+
YnBwWzBdOwo+ID4gPiA+ID4gPiAgCj4gPiA+ID4gPiA+ICAJZm9yIChpID0gMDsgaSA8IGluZm8t
PmNvbXBfcGxhbmVzOyBpKyspIHsKPiA+ID4gPiA+ID4gIAkJdW5zaWduZWQgaW50IGhkaXYgPSAo
aSA9PSAwKSA/IDEgOiBpbmZvLT5oZGl2Owo+ID4gPiA+ID4gPiBAQCAtNjI5LDExICs2NDcsMTcg
QEAgaW50IHY0bDJfZmlsbF9waXhmbXQoc3RydWN0IHY0bDJfcGl4X2Zvcm1hdCAqcGl4Zm10LCB1
MzIgcGl4ZWxmb3JtYXQsCj4gPiA+ID4gPiA+ICAKPiA+ID4gPiA+ID4gIAkJYWxpZ25lZF93aWR0
aCA9IEFMSUdOKHdpZHRoLCB2NGwyX2Zvcm1hdF9ibG9ja193aWR0aChpbmZvLCBpKSk7Cj4gPiA+
ID4gPiA+ICAJCWFsaWduZWRfaGVpZ2h0ID0gQUxJR04oaGVpZ2h0LCB2NGwyX2Zvcm1hdF9ibG9j
a19oZWlnaHQoaW5mbywgaSkpOwo+ID4gPiA+ID4gPiAtCj4gPiA+ID4gPiA+IC0JCXBpeGZtdC0+
c2l6ZWltYWdlICs9IGluZm8tPmJwcFtpXSAqCj4gPiA+ID4gPiA+IC0JCQlESVZfUk9VTkRfVVAo
YWxpZ25lZF93aWR0aCwgaGRpdikgKgo+ID4gPiA+ID4gPiAtCQkJRElWX1JPVU5EX1VQKGFsaWdu
ZWRfaGVpZ2h0LCB2ZGl2KTsKPiA+ID4gPiA+ID4gKwkJc2l6ZWltYWdlICs9IGluZm8tPmJwcFtp
XSAqIERJVl9ST1VORF9VUChhbGlnbmVkX3dpZHRoLCBoZGl2KSAqCj4gPiA+ID4gPiA+ICsJCQkg
ICAgIERJVl9ST1VORF9VUChhbGlnbmVkX2hlaWdodCwgdmRpdik7Cj4gPiA+ID4gPiA+ICAJfQo+
ID4gPiA+ID4gPiArCj4gPiA+ID4gPiA+ICsJLyoKPiA+ID4gPiA+ID4gKwkgKiBUaGUgdXNlciBt
aWdodCBoYXZlIHNwZWNpZmllZCBpdHMgb3duIHNpemVpbWFnZS9ieXRlc3BlcmxpbmUgdmFsdWVz
LAo+ID4gPiA+ID4gPiArCSAqIG9ubHkgb3ZlcnJpZGUgdGhlbSBpZiB0aGV5J3JlIG5vdCBiaWcg
ZW5vdWdoLgo+ID4gPiA+ID4gPiArCSAqLwo+ID4gPiA+ID4gPiArCXBpeGZtdC0+c2l6ZWltYWdl
ID0gbWF4KHNpemVpbWFnZSwgcGl4Zm10LT5zaXplaW1hZ2UpOwo+ID4gPiA+ID4gPiArCXBpeGZt
dC0+Ynl0ZXNwZXJsaW5lID0gbWF4KGJ5dGVzcGVybGluZSwgcGl4Zm10LT5ieXRlc3BlcmxpbmUp
Owo+ID4gPiA+ID4gPiArCj4gPiA+ID4gPiA+ICAJcmV0dXJuIDA7Cj4gPiA+ID4gPiA+ICB9Cj4g
PiA+ID4gPiA+ICBFWFBPUlRfU1lNQk9MX0dQTCh2NGwyX2ZpbGxfcGl4Zm10KTsKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBt
YWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
