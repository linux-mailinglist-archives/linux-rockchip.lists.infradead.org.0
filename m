Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA41E1647EB
	for <lists+linux-rockchip@lfdr.de>; Wed, 19 Feb 2020 16:10:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:In-Reply-To:
	References:MIME-Version:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W7uN0Am5fwQDcRSWhN3s46WD6aEZusFSmxMcTi/lRK4=; b=YkQGUoatiCf0Fz
	KD5ak2CCVMSNMtE0h6nqU7pQTi19g1aYph+I/608EUsScaWDCO/GNMEXMXAjSQYCHvWXXjGIWD3DF
	F1mafr5fweFiWbAW2OEG70VT/Q0fCI3qDb3ueQcSkXeW3L564nL2cw2AsXR9Dlr+/mJjzzs3ntpZj
	HJ3f6wERvazZZg/0PpxU+Pw2BrCbQU4UhNWE3p9ipgP/+VahXgbd+uVQHhrRw7okQmizjIeJFbeys
	kNpdA9oJo7ZEeA7Zf3r6lH6t/LursHhywqB0Y6HaV/mo2SimMZ4YQEVsRmdTLw2OLnoPE/LpBmK1w
	/57Bb5GxcijRAasup8Hg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4Qzz-0000GV-RS; Wed, 19 Feb 2020 15:10:51 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4Qzv-0000FI-Q3
 for linux-rockchip@lists.infradead.org; Wed, 19 Feb 2020 15:10:49 +0000
Received: by mail-qt1-x844.google.com with SMTP id c5so418920qtj.6
 for <linux-rockchip@lists.infradead.org>; Wed, 19 Feb 2020 07:10:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ossystems-com-br.20150623.gappssmtp.com; s=20150623;
 h=from:mime-version:references:in-reply-to:date:message-id:subject:to
 :cc; bh=dFx4RjJWgUpdnWS0fHQoyKLvXIGLCYKuO6j3IpQwQsQ=;
 b=dXvmngLFP9lz0nUnehtIPzU9/Ym5SbdsKq6i+ECoCyEMk533q+5RgTOjW0kv12qjjJ
 gIy3g3ZmauFD42x1Zs1QgM+/AweVlxyIr0p0NCCHM9Jsow4TKtddONCwV/ISZx86nKBj
 KGFtlelmpL/2HRELlEQk0v8aFBhCVaaeJlJD1ZjLA8KzHRHUS5KctzkFV6DJx0eevCYb
 fAaNP6k1hDzgqM23SR2oCPHmxO3vthx7ENetNJNhjtjfKQUE8LrElDNJk4UB6ABZKEDY
 qMobYUj27uVKn5k36sDNEIS57JZ46nHDwi3KqpPRFKibP+4iYXPFaHPstXPDUb37Rv6e
 XvjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:mime-version:references:in-reply-to:date
 :message-id:subject:to:cc;
 bh=dFx4RjJWgUpdnWS0fHQoyKLvXIGLCYKuO6j3IpQwQsQ=;
 b=K3Ke0JLq6Kuws45KG/abkVplrosedIkTvGKYjyvhUyM8L55gkdRFickxb66u4RjQYG
 z9jre22b6I3PA9ZP54RpnRiLGtLX2r6TmDporfHHXnUvXo/TWftkJbre2l1LhgdpZUYg
 xPFTmlgWLBjTKG3QnYxcGzf2kPH9d6SpjOwaWPMbayVFjRidiJSy5F6AlwrzBNjzU+nl
 RT9MHNO5Qk/3qqso6MfIW+C4YnRjmJMYF3AUsNqQedGWNjwj2RWbCwZBma65NSyNUk6/
 HWHszbT65TYCa7dk1oS+CeCPygP6puKmyrE5ukeCG1c5oTM3Dg3hIB1O9X1mQy+k54XR
 qqlg==
X-Gm-Message-State: APjAAAXovXVL3Hx2y0w91esS0XBMQx3cqfdVIIiRAi2DefonBV6IocJg
 UInTcnKFe6R2q0gyNpoq+cQN3KtBEPBlxA==
X-Google-Smtp-Source: APXvYqzIB+hdnQmVSVSWyVE0VuF122PSjMDnpb5rJZcLYK+NFWNUlA2ZX8vGimZTReD8Zwbi0JNNmA==
X-Received: by 2002:aed:2643:: with SMTP id z61mr22587215qtc.49.1582125045374; 
 Wed, 19 Feb 2020 07:10:45 -0800 (PST)
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com.
 [209.85.222.176])
 by smtp.gmail.com with ESMTPSA id o187sm1111941qkf.26.2020.02.19.07.10.43
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 19 Feb 2020 07:10:43 -0800 (PST)
From: Otavio Salvador <otavio.salvador@ossystems.com.br>
X-Google-Original-From: Otavio Salvador <otavio@ossystems.com.br>
Received: by mail-qk1-f176.google.com with SMTP id v2so422357qkj.2
 for <linux-rockchip@lists.infradead.org>; Wed, 19 Feb 2020 07:10:43 -0800 (PST)
X-Received: by 2002:a37:c48:: with SMTP id 69mr2675652qkm.46.1582125042992;
 Wed, 19 Feb 2020 07:10:42 -0800 (PST)
MIME-Version: 1.0
References: <CAP9ODKprPi8N-dU8NaKwneXH-3b0ipSEDpU5mDbGntxuyhGhJw@mail.gmail.com>
 <41a7bfe7-54b1-84eb-091f-469d971ab968@synopsys.com>
 <CAP9ODKoUH=Cc=uuhfaUy7fkSVdfBHhX-6oS9_hi3Wd6GgDiZYw@mail.gmail.com>
 <ee47be28-ba9f-750f-65d2-51a722ce291d@synopsys.com>
 <CAP9ODKqa_4NSsFMUpyFDt3ohgGBCMgbOyKaVjYfSjmcZLmmC+A@mail.gmail.com>
 <380d765b-8867-a899-b67a-c016c09fa27b@synopsys.com>
In-Reply-To: <380d765b-8867-a899-b67a-c016c09fa27b@synopsys.com>
Date: Wed, 19 Feb 2020 12:10:31 -0300
X-Gmail-Original-Message-ID: <CAP9ODKqL_GN+iebL3wPX_9fEUtUVP8Ahv03yJ1R-JLDr=Cn0BA@mail.gmail.com>
Message-ID: <CAP9ODKqL_GN+iebL3wPX_9fEUtUVP8Ahv03yJ1R-JLDr=Cn0BA@mail.gmail.com>
Subject: Re: USB DWC2 stops responding when insert/remove cable multiple times
To: Minas Harutyunyan <Minas.Harutyunyan@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_071047_915597_13E189B6 
X-CRM114-Status: GOOD (  11.98  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Felipe Balbi <balbi@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
 Johan Hovold <johan@kernel.org>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hello Minas,

On Wed, Feb 19, 2020 at 9:26 AM Minas Harutyunyan
<Minas.Harutyunyan@synopsys.com> wrote:
> On 2/17/2020 11:53 PM, Otavio Salvador wrote:
> > On Mon, Feb 17, 2020 at 10:26 AM Minas Harutyunyan
> > <Minas.Harutyunyan@synopsys.com> wrote:
> >> Enable debug prints to get full dwc2 debug prints to see what happen
> >> with dwc2.
>
> > [ 1054.529774] dwc2 30180000.usb: ep0 state:0
> > [ 1054.529785] dwc2 30180000.usb: dwc2_hsotg_start_req: DxEPCTL=0x84088200
> > [ 1054.529801] dwc2 30180000.usb: dwc2_hsotg_start_req: DXEPCTL=0x80088200
> > [ 1054.529928] dwc2 30180000.usb: ep2out: req 26bd9b9f: 512@06b7dbca,
> > noi=0, zero=0, snok=0
> > [ 1054.537095] dwc2 30180000.usb: dwc2_hsotg_irq: 04008428 00000400
> > (d88c3cc4) retry 8
> > [ 1054.537119] dwc2 30180000.usb: GINTSTS_ErlySusp
> > [ 1054.540147] dwc2 30180000.usb: gintsts=04008828  gintmsk=d88c3cc4
> > [ 1054.540172] dwc2 30180000.usb: USB SUSPEND
> > [ 1054.540191] dwc2 30180000.usb: dwc2_handle_usb_suspend_intr: DSTS=0x5ad801
> > [ 1054.540211] dwc2 30180000.usb: DSTS.Suspend Status=1 HWCFG4.Power
> > Optimize=1 HWCFG4.Hibernation=0
> > [ 1054.540242] dwc2 30180000.usb: dwc2_hsotg_irq: 04008028 00000000
> > (d88c3cc4) retry 8
> > [ 1054.585402] dwc2 30180000.usb: ep1in: req 01eff31b: 353@bf8d62d8,
> > noi=0, zero=1, snok=0
> > [ 1054.585422] dwc2 30180000.usb: dwc2_hsotg_ep_queue: submit request
> > only in active state
> > [ 1054.661667] dwc2 30180000.usb: dwc2_hsotg_irq: 04008428 00000400
> > (d88c3cc4) retry 8
> > [ 1054.661694] dwc2 30180000.usb: GINTSTS_ErlySusp
> > [ 1054.664715] dwc2 30180000.usb: gintsts=04008828  gintmsk=d88c3cc4
> > [ 1054.664741] dwc2 30180000.usb: USB SUSPEND
> > [ 1054.664760] dwc2 30180000.usb: dwc2_handle_usb_suspend_intr: DSTS=0x5ad801
> > [ 1054.664781] dwc2 30180000.usb: DSTS.Suspend Status=1 HWCFG4.Power
> >
>
> Actually, I don't see any issue with dwc2 from the log. Only not clear
> why SUSPEND happen hear. Is it because of disconnect/connect or
> reloading g_serial?
> Is this log recorded when issue seen?

Yes, the log was recorded however we did not reload the g_serial
module. So when we gathered the logs, it was stuck.

> Anyway, before SUSPEND and after dwc2 successfully perform transfers on
> all EP's - ep1in bulk, ep2out bulk and ep3in interrupt.
> Can you provide dmesg with dwc2 debug prints with exception case inside.

The log I sent was taken with:

1) boot device
2) ran 'dmesg -c' so we cleaned the old messages
3) cause the lock up to happen
4) gather dmesg output

What sequence do you want us to do?
--
Otavio Salvador                             O.S. Systems
http://www.ossystems.com.br        http://code.ossystems.com.br
Mobile: +55 (53) 9 9981-7854          Mobile: +1 (347) 903-9750

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
