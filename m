Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E72F1A1910
	for <lists+linux-rockchip@lfdr.de>; Wed,  8 Apr 2020 02:05:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7qJtwN9qaFZ9bHuj8o8oQ/1YEtUkA9YgSDGlbcDub2k=; b=G59oYI3GE2Rz8M
	rnUIbtzvgRphlSQe5TPhcUY4SC71o/34012WCRtomOURKqiu01+KYnq2RyRXdM9RMSMsbXhMZ6hse
	c3L5TgtXlfkCDcZyZPZ0OcSr0xp/+jwCLR1/x1Xz1ZC3ocLfePlPN1VyCBvWm7BJ0A1eN/mIb6P+8
	zj3IVhlRUiIxKSSlzVIyeBWRH3RRWbM9bWuZrjxvcGyHz/RA3SxVRXAOwHUcJR9LHAOyxEtpBcH3f
	B0SBVboPyHM5zOrLTnw0+1BW2XpV9BTpZMxmqS4W6POezpipeFYvzmR9XUArGXyGybmoIUV9Rg6i8
	wI66qnMYpoHhhpx0MG3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLyDc-0003xt-W2; Wed, 08 Apr 2020 00:05:24 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLyDY-0003wH-LN
 for linux-rockchip@lists.infradead.org; Wed, 08 Apr 2020 00:05:22 +0000
Received: from [IPv6:2804:431:e7cc:377d:dcf4:aab0:a7bd:9880] (unknown
 [IPv6:2804:431:e7cc:377d:dcf4:aab0:a7bd:9880])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: koike)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 688EF284F73;
 Wed,  8 Apr 2020 01:05:09 +0100 (BST)
Subject: Re: [PATCH v2 0/3] media: add v4l2_pipeline_stream_{enable,disable}
 helpers
To: =?UTF-8?Q?Niklas_S=c3=b6derlund?= <niklas.soderlund@ragnatech.se>
References: <20200403213312.1863876-1-helen.koike@collabora.com>
 <20200407193615.GG1716317@oden.dyn.berto.se>
From: Helen Koike <helen.koike@collabora.com>
Message-ID: <4be824ea-61e2-4624-4880-fccb4ff804cd@collabora.com>
Date: Tue, 7 Apr 2020 21:05:03 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200407193615.GG1716317@oden.dyn.berto.se>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_170520_829062_13CA12CB 
X-CRM114-Status: GOOD (  17.51  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: mchehab@kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, hans.verkuil@cisco.com,
 skhan@linuxfoundation.org, kernel@collabora.com, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

CgpPbiA0LzcvMjAgNDozNiBQTSwgTmlrbGFzIFPDtmRlcmx1bmQgd3JvdGU6Cj4gSGkgSGVsZW4s
Cj4gCj4gT24gMjAyMC0wNC0wMyAxODozMzowOSAtMDMwMCwgSGVsZW4gS29pa2Ugd3JvdGU6Cj4+
IEhpLAo+Pgo+PiBNZWRpYSBkcml2ZXJzIG5lZWQgdG8gaXRlcmF0ZSB0aHJvdWdoIHRoZSBwaXBl
bGluZSBhbmQgY2FsbCAuc19zdHJlYW0oKQo+PiBjYWxsYmFja3MgaW4gdGhlIHN1YmRldmljZXMu
Cj4+Cj4+IEluc3RlYWQgb2YgcmVwZWF0aW5nIGNvZGUsIGFkZCBoZWxwZXJzIGZvciB0aGlzLgo+
Pgo+PiBUaGVzZSBoZWxwZXJzIHdpbGwgZ28gd2FsayB0aHJvdWdoIHRoZSBwaXBlbGluZSBvbmx5
IHZpc2l0aW5nIGVudGl0aWVzCj4+IHRoYXQgcGFydGljaXBhdGVzIGluIHRoZSBzdHJlYW0sIGku
ZS4gaXQgZm9sbG93cyBsaW5rcyBmcm9tIHNpbmsgdG8gc291cmNlCj4+IChhbmQgbm90IHRoZSBv
cHBvc2l0ZSkuCj4+Cj4+IFdoaWNoIG1lYW5zIHRoYXQgaW4gYSB0b3BvbG9neSBsaWtlIHRoaXMg
aHR0cHM6Ly9iaXQubHkvM2IyTXhqSQo+PiBjYWxsaW5nIHY0bDJfcGlwZWxpbmVfc3RyZWFtX2Vu
YWJsZSgpIGZyb20gcmtpc3AxX21haW5wYXRoIHdvbid0IGNhbGwKPj4gLnNfc3RyZWFtKHRydWUp
IGZvciBya2lzcDFfcmVzaXplcl9zZWxmcGF0aC4KPj4KPj4gc3RyZWFtX2NvdW50IHZhcmlhYmxl
IHdhcyBhZGRlZCBpbiB2NGwyX3N1YmRldmljZSB0byBoYW5kbGUgbmVzdGVkIGNhbGxzCj4+IHRv
IHRoZSBoZWxwZXJzLgo+PiBUaGlzIGlzIHVzZWZ1bCB3aGVuIHRoZSBkcml2ZXIgYWxsb3dzIHN0
cmVhbWluZyBmcm9tIG1vcmUgdGhlbiBvbmUKPj4gY2FwdHVyZSBkZXZpY2Ugc2hhcmluZyBzdWJk
ZXZpY2VzLgo+Pgo+PiBUaGlzIHBhdGNoIGNhbWUgZnJvbSB0aGUgZXJyb3IgSSB3YXMgZmFjaW5n
IHdoZW4gbXVsdGlzdHJlYW1pbmcgZnJvbQo+PiBya2lzcDEgZHJpdmVyLCB3aGVyZSBzdG9waW5n
IG9uZSBjYXB0dXJlIHdvdWxkIGNhbGwgc19zdHJlYW0oZmFsc2UpIGluCj4+IHRoZSBwaXBlbGlu
ZSwgY2F1c2luZyBhIHN0YWxsIGluIHRoZSBzZWNvbmQgY2FwdHVyZSBkZXZpY2UuCj4+Cj4+IEFs
c28sIHRoZSB2aW1jIHBhdGNoIGh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvcGF0Y2gvMTA5
NDg4MzMvIHdvbid0Cj4+IGJlIHJlcXVpcmVkIHdpdGggdGhpcyBwYXRjaHNldC4KPj4KPj4gVGhp
cyBwYXRjaHNldCB3YXMgdGVzdGVkIG9uIHJraXNwMSBhbmQgdmltYyBkcml2ZXJzLgo+IAo+IEkn
bSBqdXN0IGN1cmlvdXMsIHdpdGggdGhpcyBzZXJpZXMgYXBwbGllZCBjYW4gSSBzdHJlYW0gc2lt
dWx0YW5lb3VzbHkgCj4gb24gbXVsdGlwbGUgdmlkZW8gZGV2aXNlcyB1c2luZyB2aW1jPwoKTm8s
IHRoaXMgcGF0Y2ggb25seSByZW1vdmVzIHRoZSByZXF1aXJlbWVudCBvZiBwYXRjaCAxLzMgaW4g
dGhlIHNlcmllcwoidmltYzogQWxsb3cgbXVsdGlwbGUgY2FwdHVyZSBkZXZpY2VzIHRvIHVzZSB0
aGUgc2FtZSBzZW5zb3IiLCBzaW5jZSB0aGUgY291bnRlcgppcyBiZWluZyBhZGRlZCBpbiB0aGUg
Y29yZSwgc28gaXQgd29uJ3QgYmUgcmVxdWlyZWQgdG8gYWRkIGl0IGZvciBlYWNoIHN1YmRldmlj
ZS4KVGhlIG90aGVyIHBhdGNoZXMgaW4gdGhhdCBzZXJpZXMgYXJlIHN0aWxsIHJlcXVpcmVkLgoK
ClJlZ2FyZHMsCkhlbGVuCgo+IAo+Pgo+PiBPdGhlciBjbGVhbnVwIG1pZ2h0IGJlIHBvc3NpYmxl
IChidXQgSSB3b24ndCBhZGQgaW4gdGhpcyBwYXRjaHNldCBhcyBJCj4+IGRvbid0IGhhdmUgdGhl
IGh3IHRvIHRlc3QpOgo+PiAJaHR0cHM6Ly9naXQubGludXh0di5vcmcvbWVkaWFfdHJlZS5naXQv
dHJlZS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3Fjb20vY2Ftc3MvY2Ftc3MtdmlkZW8uYyNuNDMw
Cj4+IAlodHRwczovL2dpdC5saW51eHR2Lm9yZy9tZWRpYV90cmVlLmdpdC90cmVlL2RyaXZlcnMv
bWVkaWEvcGxhdGZvcm0vb21hcDNpc3AvaXNwLmMjbjY5Nwo+PiAJaHR0cHM6Ly9naXQubGludXh0
di5vcmcvbWVkaWFfdHJlZS5naXQvdHJlZS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3N0bTMyL3N0
bTMyLWRjbWkuYyNuNjgwCj4+IAlodHRwczovL2dpdC5saW51eHR2Lm9yZy9tZWRpYV90cmVlLmdp
dC90cmVlL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0veGlsaW54L3hpbGlueC1kbWEuYyNuOTcKPj4K
Pj4gQ2hhbmdlcyBpbiBWMjoKPj4gPT09PT09PT09PT09PT09PT09PT0KPj4gVGhlIGZpcnN0IHZl
cnNpb24gd2FzIGNhbGxpbmcgdGhlIHNfc3RyZWFtKCkgY2FsbGJhY2tzIGZyb20gc2Vuc29yIHRv
Cj4+IGNhcHR1cmUuCj4+Cj4+IFRoaXMgd2FzIGdlbmVyYXRpbmcgZXJyb3JzIGluIHRoZSBTY2Fy
bGV0IENocm9tZWJvb2ssIHdoZW4gdGhlIHNlbnNvcgo+PiB3YXMgYmVpbmcgZW5hYmxlZCBiZWZv
cmUgdGhlIElTUC4KPj4KPj4gSXQgbWFrZSBzZW5zZSB0byBlbmFibGUgc3ViZGV2aWNlcyBmcm9t
IGNhcHR1cmUgdG8gc2Vuc29yIGluc3RlYWQgKHdoaWNoCj4+IGlzIHdoYXQgbW9zdCBkcml2ZXJz
IGRvIGFscmVhZHkpLgo+Pgo+PiBUaGlzIHYyIGRyb3BzIHRoZSBjaGFuZ2VzIGZyb20gbWMtZW50
aXR5LmMsIGFuZCByZS1pbXBsZW1lbnQgaGVscGVycyBpbgo+PiB2NGwyLWNvbW1vbi5jCj4+Cj4+
IE92ZXJ2aWV3IG9mIHBhdGNoZXM6Cj4+ID09PT09PT09PT09PT09PT09PT09Cj4+Cj4+IFBhdGgg
MS8zIGFkZHMgdGhlIGhlbHBlcnMgaW4gdjRsMi1jb21tb24uYywgYWxsb3dpbmcgbmVzdGVkIGNh
bGxzIGJ5Cj4+IGFkZGluZyBzdHJlYW1fY291bnQgaW4gdGhlIHN1YmRldmljZSBzdHJ1Y3QuCj4+
Cj4+IFBhdGNoIDIvMyBjbGVhbnVwIHJraXNwMSBkcml2ZXIgdG8gdXNlIHRoZSBoZWxwZXJzLgo+
Pgo+PiBQYXRjaCAzLzMgY2xlYW51cCB2aW1jIGRyaXZlciB0byB1c2UgdGhlIGhlbHBlcnMuCj4+
Cj4+IEhlbGVuIEtvaWtlICgzKToKPj4gICBtZWRpYTogdjRsMi1jb21tb246IGFkZCBoZWxwZXIg
ZnVuY3Rpb25zIHRvIGNhbGwgc19zdHJlYW0oKSBjYWxsYmFja3MKPj4gICBtZWRpYTogc3RhZ2lu
Zzogcmtpc3AxOiB1c2UgdjRsMl9waXBlbGluZV9zdHJlYW1fe2VuYWJsZSxkaXNhYmxlfQo+PiAg
ICAgaGVscGVycwo+PiAgIG1lZGlhOiB2aW1jOiB1c2UgdjRsMl9waXBlbGluZV9zdHJlYW1fe2Vu
YWJsZSxkaXNhYmxlfSBoZWxwZXJzCj4+Cj4+ICBkcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZpbWMv
dmltYy1jYXB0dXJlLmMgICAgfCAgMjggKysrLS0KPj4gIGRyaXZlcnMvbWVkaWEvcGxhdGZvcm0v
dmltYy92aW1jLXN0cmVhbWVyLmMgICB8ICA0OSArLS0tLS0tLQo+PiAgZHJpdmVycy9tZWRpYS92
NGwyLWNvcmUvdjRsMi1jb21tb24uYyAgICAgICAgIHwgMTE3ICsrKysrKysrKysrKysrKysrKwo+
PiAgZHJpdmVycy9zdGFnaW5nL21lZGlhL3JraXNwMS9ya2lzcDEtY2FwdHVyZS5jIHwgIDc2ICst
LS0tLS0tLS0tLQo+PiAgaW5jbHVkZS9tZWRpYS92NGwyLWNvbW1vbi5oICAgICAgICAgICAgICAg
ICAgIHwgIDI4ICsrKysrCj4+ICBpbmNsdWRlL21lZGlhL3Y0bDItc3ViZGV2LmggICAgICAgICAg
ICAgICAgICAgfCAgIDIgKwo+PiAgNiBmaWxlcyBjaGFuZ2VkLCAxNzMgaW5zZXJ0aW9ucygrKSwg
MTI3IGRlbGV0aW9ucygtKQo+Pgo+PiAtLSAKPj4gMi4yNi4wCj4+Cj4gCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
