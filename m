Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2F4919F0CD
	for <lists+linux-rockchip@lfdr.de>; Mon,  6 Apr 2020 09:32:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4iOTN5OxfMK4VioBDIlfNdpC7SHA9Ov77gfKAWz+9g0=; b=GklqoHC4jwMAXu
	/c7uaE151KswaWNHye8XyzwiqS5rS/VB+EMrLu1BEmAFSRNvqqCbBYbRBUDfljnKAeX/f0X1DQPni
	aaHFL38iPH14+knLgctrIFWlhG280eE8JfJM1Idz0NlW9+l5HfsjE5WHL7cFNEuUMl3y9I1VFIr4a
	y3sPWOdWmnITmBlClAmQufHThPzNoeyHiM2c5WvwaiIH3W2+Ycc7Qk2sWWcwXD3jsTkcuReNvP/Lg
	E+Sd6NyLuPNpgxNJzGvX5UDa3Ois9l5isAT46NAS1XINY+Hu45fylQvvK0QBhdwxGhyFESicz+sz2
	XSPZJVFiy/XafRqLDejA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLMEm-0001KR-DK; Mon, 06 Apr 2020 07:32:04 +0000
Received: from mail-ua1-x942.google.com ([2607:f8b0:4864:20::942])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLMEj-0001JC-MW
 for linux-rockchip@lists.infradead.org; Mon, 06 Apr 2020 07:32:03 +0000
Received: by mail-ua1-x942.google.com with SMTP id m18so5111543uap.9
 for <linux-rockchip@lists.infradead.org>; Mon, 06 Apr 2020 00:31:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=verdurent-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=tcs7bP7KM3PIrqJj8Hr62xEaLUtpUiqXHCb5QGQNylU=;
 b=ZCcu5A0KQmWcU5bmi1Kqt/A4CTZcApoKg1CWiTOY8Af2dGNzNsxP8p8+fKa51kPrDM
 EDDUiuqvatgTpoShc8v9N2Gg5evZH3A6p113f+M5sOsipWZyw8DVkpPke9TirEnhEK3/
 BvvpBtUzZzT7KVcfeGZ5iPAlfgZp37ksnF3PrPsyZNRYGxRIQP6ZUM1XDVTy7AFbRJko
 e0bXtLQdjoj8nkutSU9/f7TVQEiS9UlLIMr6iGhKq5kFDItQvVAeVslZ9HzbgjDUXebb
 pFyPedZGOBwLIkJU9yaYXI2YRuF3xLDjh6JTNqRWgA8ls/bCHHF0b6L4vVXhQfEyGXK9
 xx8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=tcs7bP7KM3PIrqJj8Hr62xEaLUtpUiqXHCb5QGQNylU=;
 b=DWEo5M2eYX/IyDlU8IpDDgh78NZh2aUfauXYhI5mgiepzTAoJtYNqZKhApGVH12lme
 ml/KXRHqsmDGlU1rG7chkXWYS882lbFrNPgePwj3qkx49vrelLt5PRDBSVbUjeGN7NHb
 VApoBg4Gyiv/dE6lkluuaWFyT9aHJKlRajkkzRH3QOL7PMld+dGde/j+Uok2G1fUBmjL
 Ur5c5J+L8SfofEeckgwbn0YvOLAJG2VfV8co10Pm4GylzOZtSCKXHE50VYa2Fx2HsoOO
 AcuK0FPhM2PMwfJtFFlGkW7ig2gJzlwecdQK1EEpbHDOmYyXcGROSs4QkNV6ZGzlfh3h
 gcuA==
X-Gm-Message-State: AGi0PuZn2mcdjD58oZUJlsZWnVaXLW/h7ZtiHnv9LYttKy1DsP3XKhHz
 6Bq5Y0hHkWM5wwZ3Rw12GB21oEXPfgKBpA/ZYBQiKw==
X-Google-Smtp-Source: APiQypK7NveNncZKcf8ZgGWKN34h9iznOE8Tk+T7PbfZ/mRj5uGhOR3oyEhU0l3b2UqurmrqrqJRVpVI/pXTGwXwNPw=
X-Received: by 2002:ab0:911:: with SMTP id w17mr13564370uag.60.1586158316231; 
 Mon, 06 Apr 2020 00:31:56 -0700 (PDT)
MIME-Version: 1.0
References: <05f49ae7-5cc7-d6a0-fc3d-abaf2a0b373c@web.de>
In-Reply-To: <05f49ae7-5cc7-d6a0-fc3d-abaf2a0b373c@web.de>
From: Amit Kucheria <amit.kucheria@verdurent.com>
Date: Mon, 6 Apr 2020 13:00:00 +0530
Message-ID: <CAHLCerMS5ghVXhOD7RAd5unxEe7w1W4_8hBP5Tf9HvuMEh5Lqg@mail.gmail.com>
Subject: Re: [PATCH] thermal: Delete an error message in four functions
To: Markus Elfring <Markus.Elfring@web.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_003201_775829_7883E2BC 
X-CRM114-Status: GOOD (  16.19  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:942 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Clark Williams <williams@redhat.com>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 kernel-janitors@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-rockchip@lists.infradead.org,
 lakml <linux-arm-kernel@lists.infradead.org>, Zhang Rui <rui.zhang@intel.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Linux PM list <linux-pm@vger.kernel.org>,
 Eduardo Valentin <edubezval@gmail.com>, Pascal Paillet <p.paillet@st.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-omap@vger.kernel.org,
 Allison Randal <allison@lohutok.net>, Tang Bin <tangbin@cmss.chinamobile.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, Keerthy <j-keerthy@ti.com>,
 Colin Ian King <colin.king@canonical.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

T24gU3VuLCBBcHIgNSwgMjAyMCBhdCAxMDoyMSBQTSBNYXJrdXMgRWxmcmluZyA8TWFya3VzLkVs
ZnJpbmdAd2ViLmRlPiB3cm90ZToKPgo+IEZyb206IE1hcmt1cyBFbGZyaW5nIDxlbGZyaW5nQHVz
ZXJzLnNvdXJjZWZvcmdlLm5ldD4KPiBEYXRlOiBTdW4sIDUgQXByIDIwMjAgMTg6MzU6MTYgKzAy
MDAKPgo+IFRoZSBmdW5jdGlvbiDigJxwbGF0Zm9ybV9nZXRfaXJx4oCdIGNhbiBsb2cgYW4gZXJy
b3IgYWxyZWFkeS4KPiBUaHVzIG9taXQgcmVkdW5kYW50IG1lc3NhZ2VzIGZvciB0aGUgZXhjZXB0
aW9uIGhhbmRsaW5nIGluIHRoZQo+IGNhbGxpbmcgZnVuY3Rpb25zLgo+Cj4gVGhpcyBpc3N1ZSB3
YXMgZGV0ZWN0ZWQgYnkgdXNpbmcgdGhlIENvY2NpbmVsbGUgc29mdHdhcmUuCj4KPiBTaWduZWQt
b2ZmLWJ5OiBNYXJrdXMgRWxmcmluZyA8ZWxmcmluZ0B1c2Vycy5zb3VyY2Vmb3JnZS5uZXQ+CgpS
ZXZpZXdlZC1ieTogQW1pdCBLdWNoZXJpYSA8YW1pdC5rdWNoZXJpYUBsaW5hcm8ub3JnPgoKPiAt
LS0KPiAgZHJpdmVycy90aGVybWFsL3JvY2tjaGlwX3RoZXJtYWwuYyAgICAgICAgICB8IDQgKy0t
LQo+ICBkcml2ZXJzL3RoZXJtYWwvc3Qvc3RfdGhlcm1hbF9tZW1tYXAuYyAgICAgIHwgNCArLS0t
Cj4gIGRyaXZlcnMvdGhlcm1hbC9zdC9zdG1fdGhlcm1hbC5jICAgICAgICAgICAgfCA0ICstLS0K
PiAgZHJpdmVycy90aGVybWFsL3RpLXNvYy10aGVybWFsL3RpLWJhbmRnYXAuYyB8IDUgKystLS0K
PiAgNCBmaWxlcyBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDEyIGRlbGV0aW9ucygtKQo+Cj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvdGhlcm1hbC9yb2NrY2hpcF90aGVybWFsLmMgYi9kcml2ZXJz
L3RoZXJtYWwvcm9ja2NoaXBfdGhlcm1hbC5jCj4gaW5kZXggN2MxYThiY2NkY2JhLi4xNWE3MWVj
YzkxNmMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy90aGVybWFsL3JvY2tjaGlwX3RoZXJtYWwuYwo+
ICsrKyBiL2RyaXZlcnMvdGhlcm1hbC9yb2NrY2hpcF90aGVybWFsLmMKPiBAQCAtMTI0MSwxMCAr
MTI0MSw4IEBAIHN0YXRpYyBpbnQgcm9ja2NoaXBfdGhlcm1hbF9wcm9iZShzdHJ1Y3QgcGxhdGZv
cm1fZGV2aWNlICpwZGV2KQo+ICAgICAgICAgICAgICAgICByZXR1cm4gLUVOWElPOwo+Cj4gICAg
ICAgICBpcnEgPSBwbGF0Zm9ybV9nZXRfaXJxKHBkZXYsIDApOwo+IC0gICAgICAgaWYgKGlycSA8
IDApIHsKPiAtICAgICAgICAgICAgICAgZGV2X2VycigmcGRldi0+ZGV2LCAibm8gaXJxIHJlc291
cmNlP1xuIik7Cj4gKyAgICAgICBpZiAoaXJxIDwgMCkKPiAgICAgICAgICAgICAgICAgcmV0dXJu
IC1FSU5WQUw7Cj4gLSAgICAgICB9Cj4KPiAgICAgICAgIHRoZXJtYWwgPSBkZXZtX2t6YWxsb2Mo
JnBkZXYtPmRldiwgc2l6ZW9mKHN0cnVjdCByb2NrY2hpcF90aGVybWFsX2RhdGEpLAo+ICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICBHRlBfS0VSTkVMKTsKPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy90aGVybWFsL3N0L3N0X3RoZXJtYWxfbWVtbWFwLmMgYi9kcml2ZXJzL3RoZXJtYWwvc3Qv
c3RfdGhlcm1hbF9tZW1tYXAuYwo+IGluZGV4IGE4MjRiNzhkYWJmOC4uYTAxMTQ0NTJkMTFmIDEw
MDY0NAo+IC0tLSBhL2RyaXZlcnMvdGhlcm1hbC9zdC9zdF90aGVybWFsX21lbW1hcC5jCj4gKysr
IGIvZHJpdmVycy90aGVybWFsL3N0L3N0X3RoZXJtYWxfbWVtbWFwLmMKPiBAQCAtOTQsMTAgKzk0
LDggQEAgc3RhdGljIGludCBzdF9tbWFwX3JlZ2lzdGVyX2VuYWJsZV9pcnEoc3RydWN0IHN0X3Ro
ZXJtYWxfc2Vuc29yICpzZW5zb3IpCj4gICAgICAgICBpbnQgcmV0Owo+Cj4gICAgICAgICBzZW5z
b3ItPmlycSA9IHBsYXRmb3JtX2dldF9pcnEocGRldiwgMCk7Cj4gLSAgICAgICBpZiAoc2Vuc29y
LT5pcnEgPCAwKSB7Cj4gLSAgICAgICAgICAgICAgIGRldl9lcnIoZGV2LCAiZmFpbGVkIHRvIHJl
Z2lzdGVyIElSUVxuIik7Cj4gKyAgICAgICBpZiAoc2Vuc29yLT5pcnEgPCAwKQo+ICAgICAgICAg
ICAgICAgICByZXR1cm4gc2Vuc29yLT5pcnE7Cj4gLSAgICAgICB9Cj4KPiAgICAgICAgIHJldCA9
IGRldm1fcmVxdWVzdF90aHJlYWRlZF9pcnEoZGV2LCBzZW5zb3ItPmlycSwKPiAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgTlVMTCwgc3RfbW1hcF90aGVybWFsX3RyaXBf
aGFuZGxlciwKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy90aGVybWFsL3N0L3N0bV90aGVybWFsLmMg
Yi9kcml2ZXJzL3RoZXJtYWwvc3Qvc3RtX3RoZXJtYWwuYwo+IGluZGV4IDkzMTRlM2RmNmE0Mi4u
MzMxZTJiNzY4ZGY1IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvdGhlcm1hbC9zdC9zdG1fdGhlcm1h
bC5jCj4gKysrIGIvZHJpdmVycy90aGVybWFsL3N0L3N0bV90aGVybWFsLmMKPiBAQCAtMzg1LDEw
ICszODUsOCBAQCBzdGF0aWMgaW50IHN0bV9yZWdpc3Rlcl9pcnEoc3RydWN0IHN0bV90aGVybWFs
X3NlbnNvciAqc2Vuc29yKQo+ICAgICAgICAgaW50IHJldDsKPgo+ICAgICAgICAgc2Vuc29yLT5p
cnEgPSBwbGF0Zm9ybV9nZXRfaXJxKHBkZXYsIDApOwo+IC0gICAgICAgaWYgKHNlbnNvci0+aXJx
IDwgMCkgewo+IC0gICAgICAgICAgICAgICBkZXZfZXJyKGRldiwgIiVzOiBVbmFibGUgdG8gZmlu
ZCBJUlFcbiIsIF9fZnVuY19fKTsKPiArICAgICAgIGlmIChzZW5zb3ItPmlycSA8IDApCj4gICAg
ICAgICAgICAgICAgIHJldHVybiBzZW5zb3ItPmlycTsKPiAtICAgICAgIH0KPgo+ICAgICAgICAg
cmV0ID0gZGV2bV9yZXF1ZXN0X3RocmVhZGVkX2lycShkZXYsIHNlbnNvci0+aXJxLAo+ICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBOVUxMLAo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL3RoZXJtYWwvdGktc29jLXRoZXJtYWwvdGktYmFuZGdhcC5jIGIvZHJpdmVycy90aGVy
bWFsL3RpLXNvYy10aGVybWFsL3RpLWJhbmRnYXAuYwo+IGluZGV4IDI2M2IwNDIwZmJlNC4uYWIx
OWNlZmY2ZTJhIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvdGhlcm1hbC90aS1zb2MtdGhlcm1hbC90
aS1iYW5kZ2FwLmMKPiArKysgYi9kcml2ZXJzL3RoZXJtYWwvdGktc29jLXRoZXJtYWwvdGktYmFu
ZGdhcC5jCj4gQEAgLTc3MiwxMCArNzcyLDkgQEAgc3RhdGljIGludCB0aV9iYW5kZ2FwX3RhbGVy
dF9pbml0KHN0cnVjdCB0aV9iYW5kZ2FwICpiZ3AsCj4gICAgICAgICBpbnQgcmV0Owo+Cj4gICAg
ICAgICBiZ3AtPmlycSA9IHBsYXRmb3JtX2dldF9pcnEocGRldiwgMCk7Cj4gLSAgICAgICBpZiAo
YmdwLT5pcnEgPCAwKSB7Cj4gLSAgICAgICAgICAgICAgIGRldl9lcnIoJnBkZXYtPmRldiwgImdl
dF9pcnEgZmFpbGVkXG4iKTsKPiArICAgICAgIGlmIChiZ3AtPmlycSA8IDApCj4gICAgICAgICAg
ICAgICAgIHJldHVybiBiZ3AtPmlycTsKPiAtICAgICAgIH0KPiArCj4gICAgICAgICByZXQgPSBy
ZXF1ZXN0X3RocmVhZGVkX2lycShiZ3AtPmlycSwgTlVMTCwKPiAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIHRpX2JhbmRnYXBfdGFsZXJ0X2lycV9oYW5kbGVyLAo+ICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgSVJRRl9UUklHR0VSX0hJR0ggfCBJUlFGX09ORVNI
T1QsCj4gLS0KPiAyLjI2LjAKPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=
