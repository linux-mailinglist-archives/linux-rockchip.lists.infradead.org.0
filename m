Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC061DBB66
	for <lists+linux-rockchip@lfdr.de>; Fri, 18 Oct 2019 03:54:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=11Q8hP7Cf20mH9Mv2WIDu5JHb2lQQXZktTatwcx8fkk=; b=TdW1dTfPhMtqi6o3SkHUXgGSf
	Hcj8tFUadlc3Z981Gqrrpuh39SJxSKdwX1M8Q/Lrjot+LNupWAadHifEWsQhL2BIlBjQwFGFaHzUA
	DiiwVGCRikfh1DJOHo3LkGUQx+zxEWkxpqOeeZ5dYn9dwb31KW4NvgVap1LYBQTHf6JQyu/eN0BHk
	1J+UibxE1UWjR3kW7JJs+SR292EpZLqikA+QcX9dZA48h9lvQTK4RVWUW2cS6w7daqyN0SYfxyXRr
	rnIn7kGOTDeKtmgYt2Keo7WPL/vkpwc/k7hPNs7fNg2JpXAIMA4GyBCyLseKpMggyMjZRstge2OGN
	5KZURB7fA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLHTV-0006p3-FQ; Fri, 18 Oct 2019 01:54:41 +0000
Received: from www1102.sakura.ne.jp ([219.94.129.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLHTQ-0006nI-TV
 for linux-rockchip@lists.infradead.org; Fri, 18 Oct 2019 01:54:39 +0000
Received: from fsav303.sakura.ne.jp (fsav303.sakura.ne.jp [153.120.85.134])
 by www1102.sakura.ne.jp (8.15.2/8.15.2) with ESMTP id x9I1sUbL089909;
 Fri, 18 Oct 2019 10:54:30 +0900 (JST)
 (envelope-from katsuhiro@katsuster.net)
Received: from www1102.sakura.ne.jp (219.94.129.142)
 by fsav303.sakura.ne.jp (F-Secure/fsigk_smtp/550/fsav303.sakura.ne.jp);
 Fri, 18 Oct 2019 10:54:30 +0900 (JST)
X-Virus-Status: clean(F-Secure/fsigk_smtp/550/fsav303.sakura.ne.jp)
Received: from [192.168.1.2] (121.252.232.153.ap.dti.ne.jp [153.232.252.121])
 (authenticated bits=0)
 by www1102.sakura.ne.jp (8.15.2/8.15.2) with ESMTPSA id x9I1sT6w089904
 (version=TLSv1.2 cipher=AES256-SHA bits=256 verify=NO);
 Fri, 18 Oct 2019 10:54:29 +0900 (JST)
 (envelope-from katsuhiro@katsuster.net)
Subject: Re: rk3328 USB3 controller
To: 4omecha@gmail.com
References: <CAMdYzYp9xdtb6eiUs-Tiq4jJ-jr31LTzng2o-qAbOfu_63zXVg@mail.gmail.com>
 <1b0f65be-51b6-69dd-e204-6d168f17eb7d@think-future.de>
 <20191017162131.GH14623@think-future.de>
From: Katsuhiro Suzuki <katsuhiro@katsuster.net>
Message-ID: <86b42c42-6f89-9773-4275-2fe93165a90f@katsuster.net>
Date: Fri, 18 Oct 2019 10:54:29 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191017162131.GH14623@think-future.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_185437_167984_9E3A2757 
X-CRM114-Status: GOOD (  11.85  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-rockchip@lists.infradead.org, Peter Geis <pgwipeout@gmail.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

SGVsbG8sCgpPbiAyMDE5LzEwLzE4IDE6MjEsIDRvbWVjaGFAZ21haWwuY29tIHdyb3RlOgo+IE9u
IDIwMTktMTAtMTcgMTQ6MDc6NDMsIEthdHN1aGlybyBTdXp1a2kgd3JvdGU6Cj4+IEhlbGxvIFBl
dGVyLAo+Pgo+PiBVU0IzIHBoeSBkcml2ZXIgInJvY2tjaGlwLHJrMzMyOC11M3BoeSIgaGFzIG5v
dCBiZWVuIGltcGxlbWVudGVkIG9uCj4+IHVwc3RyZWFtIGxpbnV4IGtlcm5lbC4KPj4KPj4gRmly
ZWZseVRlYW0gdXNlIHRoZSBzcGVjaWFsIHZlcnNpb24gb2YgbGludXggdGhhdCBpcyBtb2RpZmll
ZCBieSBSb2NrY2hpcC4KPj4gKEl0IHNlZW1zIGJhc2VkIG9uIGxpbnV4LTQuNCkKPj4KPj4gcm9j
a2NoaXAscmszMzI4LXUzcGh5IGlzIHByb3ZpZGVkIGJ5Cj4+IMKgaHR0cHM6Ly9naXRodWIuY29t
L0ZpcmVmbHlUZWFtL2tlcm5lbC9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtaW5u
by11c2IzLmMKPiBUaGF0J3MgYSA0MDQgb3ZlciBoZXJlLgo+IAo+IAoKT29wcywgdGhpcyBVUkwg
aXMgY29ycmVjdC4KCmh0dHBzOi8vZ2l0aHViLmNvbS9GaXJlZmx5VGVhbS9rZXJuZWwvYmxvYi9y
b2MtcmszMzI4LWNjL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC1pbm5vLXVzYjMu
YwoKCj4+Cj4+IElmIHlvdSB3YW50IHRvIHVzZSBVU0IgMy4wIHdpdGggdXBzdHJlYW0gbGludXgs
IHdlIG5lZWQgdG8gcG9ydCB0aGlzCj4+IFVTQjMgcGh5IGRyaXZlciBmcm9tIHJvY2tjaGlwLWxp
bnV4IHRvIHVwc3RyZWFtIGtlcm5lbCwgSSB0aGluay4KPj4KPj4gQmVzdCBSZWdhcmRzLAo+PiBL
YXRzdWhpcm8gU3V6dWtpCj4+Cj4+Cj4+IE9uIDIwMTkvMTAvMTcgMzo1NCwgUGV0ZXIgR2VpcyB3
cm90ZToKPj4+IEdvb2QgQWZ0ZXJub29uLAo+Pj4KPj4+IElzIHRoZXJlIGEgcGFydGljdWxhciBy
ZWFzb24gd2h5IHRoZSBVU0IzIGNvbnRyb2xsZXIgb24gdGhlIHJrMzMyOCBoYXMKPj4+IG5vdCBi
ZWVuIGVuYWJsZWQ/Cj4+PiBJdCdzIGVuYWJsZWQgb24gdGhlIFRlYW1GaXJlZmx5IHNvdXJjZSBb
MF0uCj4+PiBJIHB1bGxlZCBpdCBpbiB0byBteSBkZXZpY2UgdHJlZSBhbmQgaGF2ZSBiZWVuIHVz
aW5nIGEgVVNCMyBTU0QgYXMgbXkKPj4+IGJvb3QgZGV2aWNlIGZvciBvdmVyIGEgeWVhciBub3cu
Cj4+Pgo+Pj4gSWYgSSB3ZXJlIHRvIHN1Ym1pdCB0aGUgcGF0Y2gsIHdvdWxkIHknYWxsIGJlIG9w
ZW4gdG8gcHVsbGluZyBpdCBpbj8KPj4+Cj4+PiBbMF0gaHR0cHM6Ly9naXRodWIuY29tL0ZpcmVm
bHlUZWFtL2tlcm5lbC9ibG9iL3JvYy1yazMzMjgtY2MvYXJjaC9hcm02NC9ib290L2R0cy9yb2Nr
Y2hpcC9yazMzMjguZHRzaQo+Pj4KPj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCj4+PiBMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKPj4+IExpbnV4
LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKPj4+IGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAKPj4+Cj4+Cj4+Cj4+IF9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+IExpbnV4LXJvY2tjaGlw
IG1haWxpbmcgbGlzdAo+PiBMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCj4+IGh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
PiAKPiAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJv
Y2tjaGlwCg==
