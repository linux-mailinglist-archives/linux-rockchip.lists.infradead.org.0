Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 254EF582BD
	for <lists+linux-rockchip@lfdr.de>; Thu, 27 Jun 2019 14:40:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=22V6qrrzL1xMdrC5nzNChYr+shFEhUyL48x1wtvC2mw=; b=j5eOA7UBtoY80i
	BEyy/MfrAih4cX98hh6/hIzAhcwhhA143hSiZBraIKBiBHg+s/oRiLg9ABpVxPa4b2v/ahWdPRK7w
	hBSEZ8Zf0EMwMi/+HRRJMm35hC4PHq84aGyZqoTxPuzbh4zAukJagHyT64oZRunfwDUqEWLSitNdK
	PbYJ9r45IV3Lwi+v+U/lKTfKzsnVTXMZG8OknVCboHpHAQoowmjabOa80014rtKrkuYP1vcR0QDD9
	tmKfVpGLa+9WqdcKszaa1+F1rjRtCxA1DZDPcAVUm4IgPhKULDHproanfRWXjWNcE2D5ckOgTiru5
	h10ImCDFFY20RKQUsQ8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgThH-0007Lg-20; Thu, 27 Jun 2019 12:40:15 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgThC-0006yL-D1
 for linux-rockchip@lists.infradead.org; Thu, 27 Jun 2019 12:40:12 +0000
Received: from wf0413.dip.tu-dresden.de ([141.76.181.157] helo=phil.localnet)
 by gloria.sntech.de with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <heiko@sntech.de>)
 id 1hgTh1-0007wG-OZ; Thu, 27 Jun 2019 14:39:59 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Vicente Bergas <vicencb@gmail.com>
Subject: Re: [PATCH v2] arm64: rockchip: dts: sapphire: Fix USB3 Type-C.
Date: Thu, 27 Jun 2019 14:39:59 +0200
Message-ID: <9087476.qcbMaj4rIx@phil>
In-Reply-To: <4b759fa0-8fe9-4686-b5a7-b7a4e4564419@gmail.com>
References: <4b759fa0-8fe9-4686-b5a7-b7a4e4564419@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_054010_597863_90287EEF 
X-CRM114-Status: GOOD (  15.43  )
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
Cc: Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 William wu <wulf@rock-chips.com>, linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Vicente,

Am Samstag, 15. Juni 2019, 02:31:01 CEST schrieb Vicente Bergas:
> Before this patch, the Type-C port on the Sapphire board is dead.
> If setting the 'regulator-always-on' property to 'vcc5v0_typec0'
> then the port works for about 4 seconds at start-up. This is a
> sample trace with a memory stick plugged in:
> 1.- The memory stick LED lights on and kernel reports:
> [    4.782999] scsi 0:0:0:0: Direct-Access USB DISK PMAP PQ: 0 ANSI: 4
> [    5.904580] sd 0:0:0:0: [sdb] 3913344 512-byte logical blocks: (2.00 =

> GB/1.87 GiB)
> [    5.906860] sd 0:0:0:0: [sdb] Write Protect is off
> [    5.908973] sd 0:0:0:0: [sdb] Mode Sense: 23 00 00 00
> [    5.909122] sd 0:0:0:0: [sdb] No Caching mode page found
> [    5.911214] sd 0:0:0:0: [sdb] Assuming drive cache: write through
> [    5.951585]  sdb: sdb1
> [    5.954816] sd 0:0:0:0: [sdb] Attached SCSI removable disk
> 2.- 4 seconds later the memory stick LED lights off and kernel reports:
> [    9.082822] phy phy-ff770000.syscon:usb2-phy@e450.2: charger =3D =

> USB_DCP_CHARGER
> 3.- After a minute the kernel reports:
> [   71.666761] usb 5-1: USB disconnect, device number 2
> It has been checked that, although the LED is off, VBUS is present.
> =

> If, instead, the dr_mode is changed to host and the phy-supply changed
> accordingly, then it works. It has only been tested in host mode.
> =

> Signed-off-by: Vicente Bergas <vicencb@gmail.com>

"git am" complains about the patch being broken in "line 21",
so I guess your Google mailer somehow mangled the patch.

Can you resend in a fixed way please (maybe with git send-email)?

Thanks
Heiko


> ---
> =

> Hi Heiko,
> before i did test:
>  a.- applying only the first part of the patch: reg-always-on
>  b.- applying the full patch
> but did not test:
>  c.- applying only the last part of the patch, as you suggest
> Now i have tested (c) and it also works, so, here is v2.
> =

> Thanks for reviewing!
> =

> Regards,
>   Vicen=E7.
> =

> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi =

> b/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi
> index 04623e52ac5d..72000a7b666f 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi
> @@ -565,12 +566,11 @@
>  	status =3D "okay";
>  =

>  	u2phy0_otg: otg-port {
> -		phy-supply =3D <&vcc5v0_typec0>;
>  		status =3D "okay";
>  	};
>  =

>  	u2phy0_host: host-port {
> -		phy-supply =3D <&vcc5v0_host>;
> +		phy-supply =3D <&vcc5v0_typec0>;
>  		status =3D "okay";
>  	};
>  };
> @@ -620,7 +620,7 @@
>  =

>  &usbdrd_dwc3_0 {
>  	status =3D "okay";
> -	dr_mode =3D "otg";
> +	dr_mode =3D "host";
>  };
>  =

>  &usbdrd3_1 {
> =






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
